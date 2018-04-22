# init.pp

class sshkey {

 notify {"Installing server ssh key files":}
 file { 'ssh' :
	path => '/root/.ssh',
 	ensure => directory,
 }

 file { 'id_rsa' :
 	ensure => present,
	path => '/root/.ssh/id_rsa',
	source => ["file:id_rsa"]
	require => File['ssh'],
 }

 file { 'id_rsa.pub' :
 	ensure => present,
	path => '/root/.ssh/id_rsa.pub',
	source => ["file:id_rsa.pub"]
	require => File['ssh'],
 }

}
