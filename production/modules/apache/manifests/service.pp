# @file:		service.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		run apache service

class apache::service inherits apache {

 service { 'apache2' :
 	ensure => running,
	enable => true,
 }
}

