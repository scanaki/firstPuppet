class bash {
 package { 'bash' :
	ensure => latest,
 }

 # cat enlightenment 
 package { 'ccat' :
 	ensure => present,
 }

 file { 'bashrc' :
	ensure => present,
	path => '/root/.bashrc',
	content => template("${module_name}/${fqdn}/bashrc"),
	require => Package['bash'],
 }

 notice( "Setting bashrc config file for host [${fqdn}]." )

}

