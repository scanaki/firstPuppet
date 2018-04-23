# init.pp

class htop {
	notify {"Installing htop command":}
	package { 'htop' :
		ensure => installed,
		require => Exec['apt-install'],
	}
}
