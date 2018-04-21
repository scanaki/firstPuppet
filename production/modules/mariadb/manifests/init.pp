# init.pp

class mariadb {
	notify {"Installing maria db.":}

	package { 'mariadb-server' :
		ensure => 'installed', 
		require => Exec['apt-update'],
	}

	service { 'mariadb' :
		ensure => running,
		enable => true,
	}
}
