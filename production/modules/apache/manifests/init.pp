# @file:		init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		install and configure apache server

class apache {

 notify { "Running apache module to install and configure apache2 server" :}

 class { 'apache::install' :} ->
 class { 'apache::configure' :} ~>
 class { 'apache::service' :}

}

