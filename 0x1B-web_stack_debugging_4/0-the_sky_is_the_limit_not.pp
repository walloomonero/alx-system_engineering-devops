# fixes nginx to accept and serve more requests

exec {'modify max open files limit setting':
  command => 'sed -i "s/15/10000/" /etc/default/nginx && sudo service nginx restart',
  path    => '/usr/local/bin/:/bin/'
}
