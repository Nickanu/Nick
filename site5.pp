node default
{
if $::operatingsystem == "debian" {
service { 'apache2' : 
	ensure => running, 
}
}
elsif $::operatingsystem == 'oraclelinux' {
service { 'httpd' : 
	ensure => running,
}
}
else 
{ service { 'apache' : 
	ensure => running, 
}
}
}
