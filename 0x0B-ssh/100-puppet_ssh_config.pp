#!/usr/bin/env bash
# Ruby script to manage ssh_config file using Puppet
file_line {'PasswordAuthentication no': 
      ensure => 'present',
      path => '~/etc/ssh/ssh_config'
}
file_line {'IdentityFile ~/.ssh/school':
      ensure => 'present', 
      path => '~/etc/ssh/ssh_config'
}
