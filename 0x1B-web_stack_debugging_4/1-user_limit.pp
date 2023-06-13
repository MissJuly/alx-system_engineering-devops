# fix limit
exec { 'fix_limit_hbton_user':
command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
path    => '/usr/local/bin/:/bin/'
}

# Increase soft file limit hbton.
exec { 'increase_soft_file':
    command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
    path    => '/usr/local/bin/:/bin/'
}
