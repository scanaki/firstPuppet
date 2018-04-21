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
