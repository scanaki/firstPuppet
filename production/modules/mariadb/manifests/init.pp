# init.pp

class mariadb {
	notify {"Installing maria db.":}

	package { 'mariadb-server' :
		ensure => 'installed', 
		require => Exec['apt-install'],
	}

	service { 'mysql' :
		ensure => running,
		enable => true,
	}
}
