# @file: sshd/manifests/init.pp
# @author: Thierry JEAN-LOUIS
# @date: 20180517
# @desc: ssh deamon

class sshd {
 
 package { 'openssh-server' : 
  ensure => present,
 } ->

## Ci-dessous une ecriture identique

 file { '/etc/ssh/ssh_config' :
  ensure   => file,
  mode    => '0600',
  source   => 'puppet:///modules/sshd/ssh_config',
 } ~>

 service { 'ssh' :
  ensure      => running,
  enable     => true,
 }
}

