# ActiveMQ Manifest

class activemq {	
	package { "activemq":
		ensure => present,
	}
	
	service { "activemq":
		ensure  => "running",
		require => Package["activemq"],
	}

}