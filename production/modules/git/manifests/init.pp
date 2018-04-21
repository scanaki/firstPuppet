class git {

 package { 'git' :
  ensure => present,
  require => Exec['apt-install'],
 }

 package { 'gitk' :
  ensure => present,
  require => Exec['apt-install'],
 }

}
