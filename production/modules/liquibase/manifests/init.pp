# @file:			liquibase/manifests/init.pp
# @author:		Thierry JEAN-LOUIS
# @date: 		20180520
# @desc:			liquibase installation class


class liquibase {
	class { 'liquibase::install' :} ->
	class { 'liquibase::configure' :}
}
