# @file:		mysqldb/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		Install mysql with a default password

class mysqldb (
 root_password	=> 'default_password',
 port		=> '3306',
 ) {
 package { 'mysql-server' :
  ensure	=> present,
  require	=> Exec['apt-install'],
 }
 service { 'mysql' :
  ensure	=> running,
  enable	=> true,
 }
}

