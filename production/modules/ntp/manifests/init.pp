# @file: init.pp
# @author:	Thierry JEAN-LOUIS
# @date: 20180516
# @desc: Install and configure ntpd

class ntp {
	notify { "Starting ntp class to install and configure ntp client." :}
	class { 'ntp::install' :} ->
	class { 'ntp::configure' :} ~>
	class { 'ntp::service' :}
}
