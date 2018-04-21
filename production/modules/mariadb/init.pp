# init.pp

class mariabn {
	package { 'mariadb-server' :
		ensure => 'lastest', 
		require => Exec['apt-update'],
		notify {"Installing maria db.":}
	}

}
