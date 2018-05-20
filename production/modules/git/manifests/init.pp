# @file:		git/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		Install git commands.

class git {

 notify {"Install git commands":}

 package { 'git' :
  ensure => present,
  require => Exec['apt-install'],
 }

 package { 'gitk' :
  ensure => present,
  require => Exec['apt-install'],
 }

}
