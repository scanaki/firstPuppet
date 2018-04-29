class cronagent {
 notify {"Installing cron":}
 package { 'cron' :
  ensure => installed,
  require => Exec['apt-install'],
 }

 notify {"Starting cron service":}
 service { 'cron' :
  ensure => running,
  enable => true,
 }

 notify {"Setting cron default jobs":}
 cron { 'agent-update' :
  command => '/opt/puppetlabs/puppet/bin/puppet agent --test',
  user => 'root',
  minute => '*/2',
 }

}
