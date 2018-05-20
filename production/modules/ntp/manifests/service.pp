# @file: service.pp
# @author: Thierry JEAN-LOUIS
# @date: 20180516
# @desc: Ensure ntp service

class ntp::service inherits ntp {

	case $operatingsystem {
		centos, redhat: { $service_name = 'ntpd' }
		debian, ubuntu: { $service_name = 'ntp' }
	}

	service { 'ntp' : 
		name => $service_name,
		ensure => running,
		enable => true,
		#subscribe => File['ntp.conf'],
	}
}


