###########################################
#editor commands
alias edit=notepad++
alias n++=edit
alias notepad=notepad++
#
#
###########################################
#maven
alias mci='mvn clean install'
alias mcio='mvn clean install -o'
alias mcd='mvn clean deploy'
alias mjr='mvn jetty:run'
alias mjro='mvn jetty:run -o'
#
#
###########################################
#git commands
alias gst='git status'
alias gsr='git svn rebase'
alias gsd='git svn dcommit --rmdir'
#
#
###########################################
#folders
alias vms='cd c:/development/vms'
alias proj='cd c:/development/projects'
alias projects='proj'
alias camelRide='cd c:/development/projects/camel-ride'
alias sw='cd c:/development/projects/spring-web'
alias demo='sw'
alias ge='cd c:/development/projects/groovy-example'
alias mhs='cd c:/development/projects/mvn_helper_script'
alias cr='camelRide'
alias tools='cd c:/development/tools'
alias home='cd ~'
#
#
###########################################
#vagrant
alias vu='vagrant up'
alias vst='vagrant status'
alias vunp='vagrant up --no provision'
alias vh='vagrant halt'
alias vd='vagrant destroy'
############################################
#
#ruby commands
#ruby and cygwin together suck. fortunately, installing a gem generates a bat file that you can point at instead.
#
case `uname` in *CYGWIN*)
#
alias vagrant=vagrant.bat
alias gem=gem.bat
alias rake=rake.bat
alias irb=irb.bat
alias m=m.bat
#
esac
#
#
#############################################
