class man {
 package { 'man' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }
 
 package { 'manpages' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }
 
 package { 'manpages-fr' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }
 
 package { 'manpages-fr-extra' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }
 
}
