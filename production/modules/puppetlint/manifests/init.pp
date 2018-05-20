# @file:		puppetlint/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		install puppetint

class puppetlint {
	package { 'puppet-lint' :
		ensure		=> present,
		prodiver	=> 'gem',
	}
}

