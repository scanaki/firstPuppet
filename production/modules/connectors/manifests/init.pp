# @file:		init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180519

class connectors {
	notify { "Installing connectors" :}

	package { 'libmysql-java' :
		ensure  => 'installed',
		require => Exec['apt-install'],
	}

	package { 'libpg-java' :
		ensure  => 'installed',
		require => Exec['apt-install'],
	}
}
