node 'TestcmdTJL' {
# notify { 'devbox' : 
#  message => "Configuration node TestcmdTJL",
# }
 notify {"Configuration node TestcmdTJL":}
 include bash
 include essential
 include man
 include vimdev
 include cronagent
 include mydevbox 
 include pdfcrack
 include git

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
}

node default {
 # notify { 'master' : 
 #  message => "Configuration node default",
 # }
 include bash
 include essential
 include vim
 include cronagent
}

exec { 'apt-update' :
	command	=> '/usr/bin/apt-get update',
}

