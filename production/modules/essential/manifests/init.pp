class essential {
 package { 'wget' :
 	ensure	=> installed,
 	require	=> Exec['apt-install'],
 }
 
 package { 'curl' :
 	ensure	=> installed,
 	require	=> Exec['apt-install'],
 }
 
 package { 'less' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }

}

