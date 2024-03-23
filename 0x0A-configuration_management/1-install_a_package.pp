#!/usr/bin/pup
#To install a specific version of the flask (2.1.0)
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
