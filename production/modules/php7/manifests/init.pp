# @file:		php7/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		PHP7 init class

class php7 {

	notify { "Installing php7 and its modules" :}
	package { 
		[
			'php7.0',
			'php7.0-bcmath',
			'php7.0-bz2',
			'php7.0-cgi',
			'php7.0-cli',
			'php7.0-common',
			'php7.0-imap',
			'php7.0-dba',
			'php7.0-intl',
			'php7.0-json',
			'php7.0-mbstring',
			'php7.0-mcrypt',
			'php7.0-mysql',
			'php7.0-pgsql',
			'php7.0-pspell',
			'php7.0-readline',
			'php7.0-recode',
			'php7.0-snmp',
			'php7.0-xml',
			'php7.0-xmlrpc',
			'php7.0-zip',
			'libapache2-mod-php7.0',
		] :
		ensure	 => installed,
	}
}
