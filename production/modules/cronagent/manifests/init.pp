class cronagent {
 package { 'cron' :
  notify {"Installing cron":}
  ensure => installed,
  require => Exec['apt-install'],
 }

 service { 'cron' :
  notify {"Starting cron service":}
  ensure => running,
  enable => true,
 }

 cron { 'agent-update' :
  notify {"Setting cron default jobs":}
  command => '/opt/puppetlabs/puppet/bin/puppet agent --test',
  user => 'root',
  minute => '*/2',
 }

}
