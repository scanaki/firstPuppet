class git {

 package { 'git' :
  ensure => present,
  require => Exec['apt-update'],
 }

 package { 'gitk' :
  ensure => present,
  require => Exec['apt-update'],
 }

}
