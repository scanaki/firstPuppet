node 'TestcmdTJL', 'ubox' {
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

node 'myvm1', 'myvm2' {
 # notify { 'dbservers' : 
 #  message => "Configuration node myvm 1 et 2",
 # }
 include bash
 include essential
 include vim
 include cronagent
 include mariadb
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
	command	=> '/usr/bin/apt-get -y update',
}

exec { 'apt-install' :
	command => '/usr/bin/apt-get -y install',
	require => Exec['apt-update'],
}

