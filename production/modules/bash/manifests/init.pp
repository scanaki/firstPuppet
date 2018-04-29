class bash {
 package { 'bash' :
	ensure => latest,
 }

 file { 'bashrc' :
	ensure => present,
	path => '/root/.bashrc',
	#content => template("${module_name}/${fqdn}/bashrc"),
	source => "puppet:///modules/${module_name}/${fqdn}/bashrc",
	require => Package['bash'],
 }

 notice( "Setting bashrc config file for host [${fqdn}]." )

}

