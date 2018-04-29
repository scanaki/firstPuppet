class bash {
 package { 'bash' :
	ensure => latest,
 }

 file { 'bashrc' :
	ensure => present,
	path => '/root/.bashrc',
	case $facts['node']['labels']['hostuse'] {
		'devbox': { content => template("${module_name}/devbox/bashrc") }
		default: { content => template("${module_name}/default/bashrc") }
	}
	require => Package['bash'],
 }

 notice( "Setting bashrc config file for host [${fqdn}]." )

}

