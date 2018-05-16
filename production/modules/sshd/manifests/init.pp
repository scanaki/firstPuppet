# @file: init.pp
# @author:	Thierry JEAN-LOUIS
# @date: 20180517
# @desc: ssh deamon

class sshd {
	
	package { 'openssh-server' : 
		ensure	=> present,
		before	=> File['/etc/ssh/sshd_config'],
	}

}
