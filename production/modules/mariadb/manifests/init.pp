# init.pp

class mariadb {
	notify {"Installing maria db.":}

	package { 'mariadb-server' :
		ensure => 'installed', 
		require => Exec['apt-install'],
	}

	service { 'mariadb' :
		ensure => running,
		enable => true,
	}
}
