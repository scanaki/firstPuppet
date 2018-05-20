# @file: configure.pp
# @author: Thierry JEAN-LOUIS
# @date: 20180516
# @desc: Configure ntp service

class ntp::configure inherits ntp {

	notify { "Configuring ntp client : deploying ntp.conf file" :}
	file { 'ntp.conf' :
		path		=> '/etc/ntp.conf',
		ensure	=> file,
		#require	=> Package['ntp'],
		source	=> "puppet://modules/ntp/ntp.conf",
		content	=> template("ntp/ntp.conf.erb"),
	}

}

