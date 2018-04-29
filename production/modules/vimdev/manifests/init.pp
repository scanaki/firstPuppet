class vimdev {
 package { 'vim' :
 	ensure	=> installed,
 	require	=> Exec['apt-install'],
 }
 
 package { 'vim-doc' :
 	ensure	=> installed,
 	require	=> Exec['apt-install'],
 }
 
 package { 'vim-puppet' :
 	ensure	=> installed,
 	require	=> Exec['apt-install'],
 }
 
 package { 'vim-syntax-docker' :
 	ensure => installed,
 	require => Exec['apt-install'],
 }
 
 file { 'vimrc' :
 	ensure => present,
	path => '/root/.vimrc',
	content => template("${module_name}/vimrc"),
	owner => 'root',
	group => 'root',
	mode => '0644',
 }

 file { '/root/.vim' :
   ensure => 'directory',
   source => 'puppet:///modules/${module_name}/vim',
   recurse => remote,
   path => '/root/.vim',
 }
	
}
