# @file:		jre-9.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180519
# @desc:		Install Java runtime

class javaruntime {
	package { 'openjdk-9-jre' :
		ensure	 => installed,
		require	 => Exec['apt-install'],
	}
}
