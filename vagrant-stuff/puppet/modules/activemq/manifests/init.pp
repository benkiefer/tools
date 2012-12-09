# VIM Manifest

class activemq {
	$prefix = "/vagrant/puppet/modules"
	$fileDirectory = "${prefix}/activemq/files"
	
	exec { "unpack-activemq":
		command => "tar -xvzf ${fileDirectory}/apache-activemq-5.7.0-bin.tar.gz --directory /etc",
	}
	
	package { "activemq":
		source => "/etc/apache-activemq-5.7.0/bin/linux-x86-64",
		require => Exec["unpack-activemq"],
	}
	
	# install activemq as a service and start it
	service { "activemq-service":
		ensure  => "running",
		require => Package["activemq"],
	}

}