node default
{
service { 'httpd' :
	name => $::osfamily ? {
	debian => 'apache2',
	Redhat => 'httpd',
	default => 'apache',
},
	ensure => running,
}
}

