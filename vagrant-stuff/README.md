# Vagrant Stuff
I'm working through Puppet Pro by Turnbull and McCune. 

In order to use this stuff you must have:
 - Vagrant installed
 - Virtual Box installed
 - This project checked out
 - At least a 512MB of RAM available 

To start up the VM, cd to the checkout directory and type 'vagrant up'. For practical purposes, you will need to know more commands than this, but at least this will get your vm up.

You can can connect to the VM through Cygwin with command "ssh vagrant@localhost -p2222". When prompted for the password, type "vagrant".
 
# Current Modules 
 - VIM
 - Apache

Note: VIM is the only module that is installed by default currently.
 
# Coming Soon
Modules for ActiveMQ, MySql, and H2. I hope.