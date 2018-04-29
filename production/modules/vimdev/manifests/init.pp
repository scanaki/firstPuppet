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

 file { 'vim' :
   ensure => 'present',
   path => '/root/.vim',
   source => 'puppet:///modules/vimdev/vim/*',
 }
	
}
