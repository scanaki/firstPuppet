# @file:			liquibase/manifests/configure.pp
# @author:		Thierry JEAN-LOUIS
# @date: 		20180521
# @desc:			liquibase configuration class


class liquibase::configure inherits liquibase {


	notify { "Liquibase configuration : create changesets directory" :}
	file { 'changesets' :
		ensure => directory,
		path	 => "${liquibase_home}/changesets",
	}

	notify { "Liquibase configuration : create liquibase.properties file" :}
	file { 'liquibase.properties' :
		ensure 	=> present,
		path	 	=> "${liquibase_home}/liquibase.properties",
		content	=> template("liquibase/liquibase.properties.erb"),
	}

	notify { "Liquibase configuration : Verifying liquibasee version" :}
	exec { 'liquibase-version' :
		environment => [ 
			'LIQUIBASE_HOME=/op/liquibase', 
			'CLASSPATH="/opt/liquibase:/opt/liquibase/lib:${CLASSPATH}"',
			'MYSQL_JCONNECTOR=/usr/share/java/mysql-connector-java.jar'
		],
		cwd		=> '/opt/liquibase',
		command	=> '/bin/bash -c liquibase -version',
		path		=> [ 
			'/opt/liquibase',
			'/opt/liquibase/lib',
			'/usr/share/java'
		],
		logoutput   => true,
	}

}
