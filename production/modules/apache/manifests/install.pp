# @file:		install.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		install apache server

class apache::install inherits apache {

 notify { 'Installing apache 2 server' :}

 package { 'apache2' :
 	ensure => present,
 }

}

