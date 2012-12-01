#Git Svn Rebase All

A script for updating all of my Git repositories within a given directory. Output is piped to the console so you know what is going on. When the script finishes, you will see a list of any repositories that couldn't be updated (outstanding code, etc.).

The output will look something like this:

    rebasing calculation-engine
    Current branch master is up to date.
    rebasing cep-processing
    src/main/java/com/bcssi/cqrs/cep/processing/servicecreation/ServiceCreationFailureException.java: needs update
    src/main/java/com/bcssi/cqrs/cep/processing/servicecreation/ServiceCreationProcessor.java: needs update
    src/main/resources/com/bcssi/cqrs/cep/processing/camel-context.xml: needs update
    update-index --refresh: command returned error: 1
    
    rebasing scheduled-processing
            M       src/main/resources/com/bcssi/cqrs/scheduled/default.properties
    r13928 = d7324fad2ebbdb0d9762615164a4d2058e31f875 (refs/remotes/trunk)
    First, rewinding head to replay your work on top of it...
    Fast-forwarded master to refs/remotes/trunk.
    rebasing scheduler-utils
    Current branch master is up to date.
    rebasing system-init
    Current branch master is up to date.

    Failed processing the following directories:
            - cep-processing

Enjoy			