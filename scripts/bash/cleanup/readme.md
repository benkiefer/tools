#Jar Hunt
When running a webapp in Tomcat through IntelliJ, IntelliJ will sometimes pull down new versions of dependent jars when building the war file. 

These jar files can sometimes cause problems (duplicate persistance units was my poison) and they need to be cleaned up before the app will run successfully.

###Usage

     ./jarhunt.sh directory
	 
###Output

     Scanning directoryName
	      - Removing evil-1.0-123456.jar