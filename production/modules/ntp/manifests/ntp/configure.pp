# @file: configure.pp
# @author: Thierry JEAN-LOUIS
# @date: 20180516
# @desc: Configure ntp service

define ntp::configure {

	file { 'ntp.conf' :
		path		=> '/etc/ntp.conf',
		ensure	=> file,
		require	=> Package['ntp'],
		source	=> "puppet://modules/ntp/ntp.conf",
	}

}

