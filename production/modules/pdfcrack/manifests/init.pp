# @file:		pdfcrack/manifests/init.pp
# @author:	Thierry JEAN-LOUIS
# @date:		20180520
# @desc:		Install pdfcrack tool

class pdfcrack {
 package { 'pdfcrack' :
        ensure	=> installed,
        require	=> Exec['apt-install'],
 }
}
