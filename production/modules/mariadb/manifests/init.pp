# @file:		mariadb/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		Install mariadb

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
