# @file:		configure.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		configure apache server

class apache::configure inherits apache {

 define apache::virtualhost (
  $ensure = present,
  $template = 'apache/virtualhost.conf.erb',
  ) {
   file { "ApacheVirtualHost_${name}" :
	ensure 	=> $ensure,
	content => template("${template}"),
   }
 }

 apache::virtualhost { 'www.ikanacs.com' :
  	template => 'site/apache/www.ikanacs.com-erb'
 }

}
