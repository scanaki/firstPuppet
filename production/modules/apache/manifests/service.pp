# @file:		service.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		run apache service

class apache::service inherits apache {

 notify { "Setting apache 2 config files" :}
 file { 'apache2.conf' :
 	ensure	=> present,
	path		=> '/etc/apache2/apache2.conf',
	#content	=> template("${module_name}/apache2.conf.erb"),
	source	=> "puppet:///modules/${module_name}/apache2.conf.erb",
 }

 file { 'ports.conf' :
 	ensure	=> present,
	path		=> '/etc/apache2/ports.conf',
	#content	=> template("${module_name}/ports.conf.erb"),
	source	=> "puppet:///modules/${module_name}/ports.conf.erb",
 }

 notify { "Running apache 2 service" :}
 service { 'apache2' :
 	ensure   => running,
	enable    => true,
	subscribe => File['apache2.conf','ports.conf'],
 }
}

