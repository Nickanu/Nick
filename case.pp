node default
{
case $::osfamily
{
"debian": { service { 'apache2' : ensure => running, }
}
'Redhat': { service { 'httpd' : ensure => running, }
}
default: { service { 'apache' : ensure => running, }
}
}
}
