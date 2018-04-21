class pdfcrack {
 package { 'pdfcrack' :
        ensure	=> installed,
        require	=> Exec['apt-install'],
 }
}
