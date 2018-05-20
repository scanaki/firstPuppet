# @file:		configure.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		configure apache server

class apache::configure inherits apache {

 notify { "Setting apache 2 config files" :}
 file { 'apache2.conf' :
 	ensure	=> present,
	path		=> '/etc/apache2/apache2.conf',
	#content	=> template("${module_name}/apache2.conf.erb"),
	source	=> "puppet:///modules/${module_name}/apache2.conf",
 }

 file { 'ports.conf' :
 	ensure	=> present,
	path		=> '/etc/apache2/ports.conf',
	#content	=> template("${module_name}/ports.conf.erb"),
	source	=> "puppet:///modules/${module_name}/ports.conf",
 }

#  define apache::virtualhost (
#   $ensure = present,
#   $template = 'apache/virtualhost.conf.erb',
#   ) {
#    file { "ApacheVirtualHost_${name}" :
# 	ensure 	=> $ensure,
# 	content => template("${template}"),
#    }
#  }
# 
#  apache::virtualhost { 'www.ikanacs.com' :
#   	template => 'site/apache/www.ikanacs.com-erb'
#  }

}
