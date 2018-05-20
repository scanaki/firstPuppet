# @file:			liquibase/manifests/configure.pp
# @author:		Thierry JEAN-LOUIS
# @date: 		20180521
# @desc:			liquibase configuration class


class liquibase::configure inherits liquibase {

	exec { 'liquibase-env-home' :
		command	 => '/bin/bash -c export LIQUIBASE_HOME="/op/liquibase"'
	}

	exec { 'liquibase-env-cp' :
		command	 => '/bin/bash -c export CLASSPATH="/opt/liquibase:/opt/liquibase/lib:${CLASSPATH}"',
	}

	exec { 'liquibase-version' :
		environment => [ 
			'LIQUIBASE_HOME=/op/liquibase', 
			'CLASSPATH="/opt/liquibase:/opt/liquibase/lib:${CLASSPATH}"',
			'MYSQL_JCONNECTOR=/usr/share/java/mysql-connector-java.jar'
		],
		cwd			=> '/opt/liquibase',
		command		=> '/opt/liquibase/liquibase -version',
		path			=> [ 
			'/opt/liquibase',
			'/opt/liquibase/lib',
			'/usr/share/java'
		],
	}

}
