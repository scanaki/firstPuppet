# @file:		vim/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		install vim and vim man pages

class vim {
 package { 'vim' :
 	ensure	=> installed,
 	require	=> Exec['apt-install'],
 }
 
 package { 'vim-doc' :
 	ensure	=> installed,
 	require	=> Exec['apt-install'],
 }
 
 file { 'vimrc' :
 	ensure => present,
	path => '/root/.vimrc',
	content => template("${module_name}/vimrc"),
	owner => 'root',
	group => 'root',
	mode => '0644',
 }
 
}
