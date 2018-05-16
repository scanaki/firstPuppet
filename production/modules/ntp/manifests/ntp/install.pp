# @file: install.pp
# @author: Thierry JEAN-LOUIS
# @date: 20180516
# @desc: Install ntp service

define ntp::install {

	package { 'ntp' : 
		ensure => installed,
	}
}
