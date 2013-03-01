#VCS Update

A script for updating all of my checked out projects within a given directory. Output is piped to the console so you know what is going on. When the script finishes, you will see a list of any projects that couldn't be updated (outstanding code, etc.).

The output will look something like this:

    updating project A [git]
    Current branch master is up to date.
    updating project B [git]
    src/main/java/org.burgers/MyClass.java: needs update
    update-index --refresh: command returned error: 1 
    updating project C [git]
            M       src/main/resources/default.properties
    r1 = 123456789(refs/remotes/trunk)
    First, rewinding head to replay your work on top of it...
    Fast-forwarded master to refs/remotes/trunk.
    updating project D [git]
    Current branch master is up to date.
    updating project E [svn]
    Updating .
	At revision 44444.

    Failed processing the following directories:
            - project B

Execution will look something like this.

    groovy update vcs directoryPath			

Currently supported VCS options include: all, svn, git
	
Enjoy			