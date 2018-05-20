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

 package { 'locate' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }

 include ntp
}

