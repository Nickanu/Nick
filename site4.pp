node default
{
Exec { user => 'root',
	cwd => '/root',
	path => '/bin',
}

if $::architecture == "i386" {
exec { 'p1' :
	command => "echo 'kernel.pid_max=500' >> /tmp/naresh",
}
}

elsif $::architecture == "x86_64" {
exec { 'p2' :
	command => "echo 'kernel.pid_max=1500' >> /tmp/naresh"
}
}

else {
exec { 'p3' :
	command => "echo 'kernel.pid_max=2000' >> /tmp/naresh"
}
}
}
