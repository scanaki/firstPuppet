# @file:		init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		install and configure apache server

class apache {

 class { 'apache::service' :} ->
 class { 'apache::configure' :} ->
 class { 'apache::install' :}

}
