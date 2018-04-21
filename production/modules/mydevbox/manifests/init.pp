class mydevbox {

 package { 'groovy2' :
 	ensure	=> installed,
 	require	=> Exec['apt-install'],
 }
 
 package { 'groovy2-doc' :
 	ensure	=> installed,
 	require	=> Exec['apt-install'],
 }
 
 package { 'gcc' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }

 package { 'javacc' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }

 package { 'javacc-doc' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }

 package { 'manpages-dev' :
        ensure => installed,
        require => Exec['apt-install'],
 }

 package { 'manpages-fr-dev' :
        ensure => installed,
        require => Exec['apt-install'],
 }

}
