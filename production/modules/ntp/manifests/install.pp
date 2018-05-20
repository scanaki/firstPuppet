# @file: install.pp
# @author: Thierry JEAN-LOUIS
# @date: 20180516
# @desc: Install ntp service

class ntp::install inherits ntp {

	notify { "Installing ntp client." :}
	package { 'ntp' : 
		ensure => installed,
	}
}
