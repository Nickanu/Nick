node default
{
package { 'vsftpd':
	ensure	=>	installed,
	provider	=>	'yum',
} 

file { '/etc/vsftpd/vsftpd.conf':
	owner	=>	'root',
	mode	=>	'0775',
} 

service {'vsftpd':
	ensure	=>	running,
}

Package['vsftpd'] -> File['/etc/vsftpd/vsftpd.conf'] ~> Service['vsftpd']
}
