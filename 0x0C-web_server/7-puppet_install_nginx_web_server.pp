# Install nginx webserver
package { 'nginx':
    ensure  => installed,
}

file_line { 'classy':
    ensure => 'present',
    path   => '/etc/nginx/sites-available/default',
    after  => 'listen 80 default_server;',
    line   => 'rewrite ^ https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;'
}

file { '/var/www/html/index.html':
    content => 'Hello World!',
}

service { 'nginx':
    ensure  => running,
    require => Package['nginx'],
}