# @file:		install.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		install apache server

class apache::install inherits apache {

 notify { 'Installing apache 2 server' :}

 package { 'apache2-bin' :
 	ensure => present,
 }

 package { 'apache2-data' :
 	ensure => present,
 }

 package { 'apache2-utils' :
 	ensure => present,
 }

 package { 'apache2-doc' :
 	ensure => present,
 }

 package { 'apache2' :
 	ensure => present,
 }

}

