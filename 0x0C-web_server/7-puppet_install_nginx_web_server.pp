# configuring nginx server with Puppet
package { 'nginx':
  ensure => installed,
}


file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
    server {
      listen 80 default_server;
      listen [::]:80 default_server;

      root /var/www/html;

      server_name _;

      location / {
        return 200 'Hello World!';
      }

      location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4
      }
    }
  ",
  require => Package['nginx'],
}


file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!",
  require => Package['nginx'],
}


service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default', '/var/www/html/index.html'],
}
