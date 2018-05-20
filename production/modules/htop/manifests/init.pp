# @file:		htop/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		Install htop command.

class htop {
	notify {"Installing htop command":}
	package { 'htop' :
		ensure => installed,
		require => Exec['apt-install'],
	}
}
