#Git Svn Rebase All

A script for updating all of my Git repositories within a given directory. Output is piped to the console so you know what is going on. When the script finishes, you will see a list of any repositories that couldn't be updated (outstanding code, etc.).

The output will look something like this:

    rebasing project A
    Current branch master is up to date.
    rebasing project B
    src/main/java/org.burgers/MyClass.java: needs update
    update-index --refresh: command returned error: 1
    
    rebasing project C
            M       src/main/resources/default.properties
    r1 = 123456789(refs/remotes/trunk)
    First, rewinding head to replay your work on top of it...
    Fast-forwarded master to refs/remotes/trunk.
    rebasing project D
    Current branch master is up to date.
    rebasing project E
    Current branch master is up to date.

    Failed processing the following directories:
            - project B

Enjoy			