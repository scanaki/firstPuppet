# @file:			liquibase/manifests/install.pp
# @author:		Thierry JEAN-LOUIS
# @date: 		20180520
# @desc:			liquibase installation class


class liquibase::install inherits liquibase {

	# https://github.com/liquibase/liquibase/releases/download/liquibase-parent-3.6.1/liquibase-3.6.1-bin.zip
	# https://github.com/liquibase/liquibase/releases/download/liquibase-parent-3.6.1/liquibase-3.6.1-bin.tar.gz
	notify { "Starting liquibase class in order to install and configure liquibase" :}
	
	$version	   = '3.6.1'
	$apps_name	= "liquibase-${version}-bin.tar.gz"

	notify { "Downloading liquibase" :}
	exec { 'apps_wget' :
		command	 => "/usr/bin/wget https://github.com/liquibase/liquibase/releases/download/liquibase-parent-${version}/${apps_name} -O /tmp/${apps_name}",
		unless	 => "/usr/bin/test -f /tmp/${apps_name}",
	} ->

	notify { "Unzipping liquibase" :}
	exec { 'apps_unzip' :
		cwd		 => '/opt/liquibase',
		command	 => "/bin/tar xvzf /tmp/${apps_name}",
		#unless	 => "test -f /opt/liquibase/",
	}

}
