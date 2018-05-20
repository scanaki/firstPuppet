node 'TestcmdTJL' {
# notify { 'devbox' : 
#  message => "Configuration node TestcmdTJL",
# }
 notify {"Configuration node TestcmdTJL":}
 include git
 include bash
 include essential
 include man
 include vimdev
 include cronagent
 include mydevbox 
 include pdfcrack
 include htop

 notice("Test affichage message NOTICE")
 #debug("Test affichage message de DEBUG")
 #alert("Test affichage message d'ALERT")
 #info("Test affichage message d'INFO")
 #err("Test affichage message d'ERR")
 #warning("Test affichage message de WARNIG")
 # fail("Pour info : Ce type de message stop l'execution du process.")
}

node /myvm/ {
 # notify { 'dbservers' : 
 #  message => "Configuration node myvm 1 et 2",
 # }
 include bash
 include essential
 include vim
 include cronagent
 include mariadb
 include connectors
 include javaruntime
 include liquibase
}

node /apach/ {
 # notify { 'dbservers' : 
 #  message => "Configuration node myvm 1 et 2",
 # }
 include bash
 include essential
 include vim
 include cronagent
 include connectors
 include javaruntime
 include apache
 include php7 
}

node default, puppet {
 # notify { 'master' : 
 #  message => "Configuration node default",
 # }
 include bash
 include essential
 include vim
 include cronagent
 include sshkey
}

exec { 'apt-update' :
	#command	=> '/usr/bin/apt-get -y update',
	command	=> '/usr/bin/apt update -y',
}

exec { 'apt-install' :
	#command => '/usr/bin/apt-get -y install',
	command => '/usr/bin/apt install -y',
	require => Exec['apt-update'],
}

