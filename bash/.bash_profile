export CYGWIN=nodosfilewarning
###########################################
#ruby commands
#ruby and cygwin together suck. fortunately, installing a gem generates a bat file that you can point at instead.
alias gem=gem.bat
alias m=m.bat
alias rake=rake.bat
alias irb=irb.bat
#
#
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
alias home='cd ~'