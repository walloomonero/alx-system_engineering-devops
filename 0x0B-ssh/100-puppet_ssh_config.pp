#!/usr/bin/pup
# Defines SSH client configuration
file { '/home/wallas/.ssh/config':
  ensure  => present,
  owner   => wallas,
  group   => wallas,
  mode    => '0600', # Set permissions to 600
  content => "\
Host ubuntu@3.85.175.214
    HostName <3.85.175.214>
    User <ubuntu>
    IdentityFile ~/.ssh/school
    PasswordAuthentication no\n",
}
