node default
{
service { 'httpd' :
	name => $::operatingsystem ? {
	debian => 'apache2',
	oraclelinux => 'httpd',
	default => 'apache',
},
	ensure => running,
}
}
