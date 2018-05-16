# @file: init.pp
# @author:	Thierry JEAN-LOUIS
# @date: 20180516
# @desc: Install and configure ntpd

class ntp {
	include "ntp::install"
	include "ntp::configure"
	include "ntp::service"
}
