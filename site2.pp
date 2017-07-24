node default
{

Exec { 
#	user => 'root',
#	cwd => '/root',
	path => '/bin',
}

exec { 'p1' :
	command => $::architecture ? {
	i386 => "echo 'kernel.pid_max=500' >> /etc/sysctl.conf",
	x86_64 => "echo 'kernel.pid_max=1500' >> /etc/sysctl.conf",
	default => "echo 'kernel.pid_max=2000' >> /etc/sysctl.conf",

}
}
}
