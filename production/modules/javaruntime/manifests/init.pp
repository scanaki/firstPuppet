# @file:		javaruntime/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180519
# @desc:		Install Java runtime

class javaruntime {
	notify { "Installing Java runtime environment v.7" :}
	package { 'openjdk-7-jre' :
		ensure	 => installed,
		require	 => Exec['apt-install'],
	}

# 	notify { "Installing Java runtime environment v.8" :}
# 	package { 'openjdk-8-jre' :
# 		ensure	 => installed,
# 		require	 => Exec['apt-install'],
# 	}
# 
# 	notify { "Installing Java runtime environment v.9" :}
# 	package { 'openjdk-9-jre' :
# 		ensure	 => installed,
# 		require	 => Exec['apt-install'],
# 	}
}
