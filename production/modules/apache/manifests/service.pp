# @file:		service.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		run apache service

class apache::service inherits apache {

 service { 'httpd' :
 	ensure => running,
	enable => true,
 }
}

