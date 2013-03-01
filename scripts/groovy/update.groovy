List<VCS> vcsOptions = VCS.findByName(args[0])
File file = new File(args[1])

if (vcsOptions){
    if (file.exists() && file.directory){
        def failures = processDirectories(file, vcsOptions)    
        processFailures(failures)
    } else {
        println "Unable to update ${file.absolutePath}."
    }
} else {
    println "Unsupported VCS ${args[0]}"
}

void processFailures(List<File> failures){
    if (failures){
        println "\n"
        println "Failed processing the following directories:"
        failures.each {
            println "\t- ${it.name}"
        }
        println "\n"        
    }
}

List<File> processDirectories(File file, List<VCS> vcsOptions){
    List<File> failures = []
    file.eachDir {projectDirectory ->
		VCS vcs = determineVCS(projectDirectory, vcsOptions)
        if (vcs){
            println "updating ${projectDirectory.name} [${vcs.name().toLowerCase()}]"
            if (executeUpdate(projectDirectory, vcs) != 0){
                failures << projectDirectory
            }
        }
    }
    failures
}

VCS determineVCS(File directory, List<VCS> vcsOptions){
	for (VCS vcs in vcsOptions) {    
		File projectFolder = new File(directory, vcs.folder)
		if (projectFolder.exists() && projectFolder.isDirectory()) return vcs
	}
	return null;
}

def executeUpdate(File projectDirectory, VCS vcs){
	ProcessBuilder pb = new ProcessBuilder(vcs.command.split(" "))
	pb.directory(projectDirectory)

    Process p = pb.start()
    p.waitForProcessOutput(System.out, System.err)         
    p.exitValue()   
}

enum VCS {
    GIT("git svn rebase", ".git"), SVN("svn update", ".svn")
    
    String command
    String folder
    
    VCS(command, folder){
        this.command = command
        this.folder = folder
    }
    
    static List<VCS> findByName(String name){
		if (name.equalsIgnoreCase("ALL")) return [GIT, SVN]
        for (VCS vcs  : values()) {
            if (vcs.name().equalsIgnoreCase(name)) return [vcs];
        }
        null
    }
}