# init.pp

class sshkey {

 notify {"Installing server ssh key files":}
 file { 'ssh' :
	path => '/root/.ssh',
 	ensure => present,
 }

 file { 'id_rsa' :
 	ensure => present,
	path => '/root/.ssh/id_rsa',
	source => 'puppet:///modules/sshkey/id_rsa',
	require => File['ssh'],
 }

 file { 'id_rsa.pub' :
 	ensure => present,
	path => '/root/.ssh/id_rsa.pub',
	source => 'puppet:///modules/sshkey/id_rsa.pub',
	require => File['ssh'],
 }

}
