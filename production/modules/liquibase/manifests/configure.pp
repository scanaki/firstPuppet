# @file:			liquibase/manifests/configure.pp
# @author:		Thierry JEAN-LOUIS
# @date: 		20180521
# @desc:			liquibase configuration class


class liquibase::configure inherits liquibase {

	exec { 'liquibase-version' :
		environment => [ 
			'LIQUIBASE_HOME=/op/liquibase', 
			'CLASSPATH="/opt/liquibase:/opt/liquibase/lib:${CLASSPATH}"',
			'MYSQL_JCONNECTOR=/usr/share/java/mysql-connector-java.jar'
		],
		cwd			=> '/opt/liquibase',
		command		=> 'liquibase -version',
		path			=> [ 
			'/opt/liquibase',
			'/opt/liquibase/lib',
			'/usr/share/java'
		],
		logoutput   => true,
	}

}
