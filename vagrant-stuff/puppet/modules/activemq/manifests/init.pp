# VIM Manifest

class activemq {
	$prefix = "/vagrant/puppet/modules"
	$fileDirectory = "${prefix}/activemq/files"
	
	exec { "unpack-activemq":
		command => "tar -xvzf ${fileDirectory}/activemq.tar.gz --directory /etc",
	}
	
	# install activemq as a service and start it
#	service { "activemq":
#		ensure  => "running",
#		require => Exec["unpack-activemq"],
#	}

}