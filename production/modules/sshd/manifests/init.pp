# @file: init.pp
# @author:	Thierry JEAN-LOUIS
# @date: 20180517
# @desc: ssh deamon

class sshd {
	
	package { 'openssh-server' : 
		ensure	=> present,
		before	=> [
			File['/etc/ssh/sshd_config'],
			Service['sshd'],
		]
	}

##	Ci-dessous une ecriture identique

	file { '/etc/ssh/sshd_config' :
		ensure	  => file,
		mode		  => '0600',
		source	  => 'puppet:///modules/sshd/sshd_config',
		require	  => Package['openssh-server'],
		before	  => Service['sshd'],
		notify	  => Service['sshd'],
	}

	service { 'sshd' :
		ensure 	    => running,
		enable	    => true,
		subscribe	 => File['/etc/ssh/sshd_config'],
		require		 => [
			Package['openssh-server'],
			File['/etc/ssh/sshd_config'],
		],
	}
}
