# @file: init.pp
# @author:	Thierry JEAN-LOUIS
# @date: 20180516
# @desc: Install and configure ntpd

class ntp {
	class { 'ntp::install' :} ->
	class { 'ntp::configure' :} ~>
	class { 'ntp::service' :}
}
