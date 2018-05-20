# @file:		apache/manifests/service.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		run apache service

class apache::service inherits apache {

 notify { "Running apache 2 service" :}
 service { 'apache2' :
 	ensure   => running,
	enable    => true,
	subscribe => File['apache2.conf','ports.conf'],
 }
}

