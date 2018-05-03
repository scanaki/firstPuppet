class apache {
 package { 'apache2' :
 	ensure => present,
 }

 service { 'httpd' :
 	ensure => running,
	enable => true,
 }

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
