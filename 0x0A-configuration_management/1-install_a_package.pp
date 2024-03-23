#!/usr/bin/pup

#Puppet Manifest: Install Flask 2.1.0 and Werkzeug 2.1.1 using pip3

package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}

package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}
