export CYGWIN=nodosfilewarning
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
#
###########################################
#folders
alias proj='cd c:/projects'
alias camelRide='cd c:/projects/camel-ride'
alias sw='cd c:/projects/spring-web'
alias demo='sw'
alias mhs='cd c:/projects/mvn_helper_script'
alias cr='camelRide'
alias tools='cd c:/tools'
alias hl='cd c:/projects/portfolio/hibernate-learning'
alias home='cd ~'
############################################
#
#ruby commands
#ruby and cygwin together suck. fortunately, installing a gem generates a bat file that you can point at instead.
#
case `uname` in *CYGWIN*)
#
alias gem=gem.bat
alias rake=rake.bat
alias irb=irb.bat
alias m=m.bat
#
esac
#
#############################################