# @file:		install.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		install apache server

class apache::install inherits apache {

 notify { 'Installing apache 2 binaries' :}

 package { 'apache2-bin' :
 	ensure => installed,
 }

 notify { 'Installing apache 2 data' :}

 package { 'apache2-data' :
 	ensure => installed,
 }

 notify { 'Installing apache 2 utils' :}

 package { 'apache2-utils' :
 	ensure => installed,
 }

 notify { 'Installing apache 2 doc and man pages' :}

 package { 'apache2-doc' :
 	ensure => installed,
 }

 notify { 'Installing apache 2 server' :}

 package { 'apache2' :
 	ensure => installed,
 }

}

