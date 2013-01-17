/* 
git config --global core.filemode false

the above command hasn't been working for me in git, 
so I wrote this script to go through all git projects in a folder
and turn off file mode on them.

*/

File file = new File(args[0])

if (file.exists() && file.directory){
    processDirectories(file)    
} else {
    println "${file.absolutePath} is not a valid directory."
}

void processDirectories(File file){
    file.eachDir {projectDirectory ->
        if (isGitProject(projectDirectory)){
            println "updating ${projectDirectory.name}"
            executeCommand(projectDirectory)
        }
    }
}

boolean isGitProject(File directory){
    File gitFolder = new File(directory, ".git")
    gitFolder.exists() && gitFolder.isDirectory()
}

def executeCommand(File projectDirectory){
    def command = "git config core.filemode false"
    Process p = command.execute([], projectDirectory)            
    p.waitForProcessOutput(System.out, System.err)         
    p.exitValue()   
}