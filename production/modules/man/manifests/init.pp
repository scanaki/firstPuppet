# @file:		man/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		install man pages

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
