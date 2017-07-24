node default
{
if $::osfamily == 'Debian' { $service = 'apache2' }
elsif $::osfamily == 'RedHat' { $service = 'httpd' }
else { $service = 'apache' }
 }

