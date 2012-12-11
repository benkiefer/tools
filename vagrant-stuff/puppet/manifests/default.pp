# Standard configuration puppet file	
	# set constant file values
	File {
		owner   => root,
		group   => admin,
		mode    => 664,
	}

	# set up path correctly
	Exec { 
		path => '/usr/bin:/bin:/usr/sbin:/sbin', 
	}

	exec { 'apt-get update':
		command => '/usr/bin/apt-get update',
	}

	package { 'openjdk-7-jre':
		ensure => present,
		require => Exec["apt-get update"],
	}

	# List of modules
	include activemq
	# include vim
	# include apache