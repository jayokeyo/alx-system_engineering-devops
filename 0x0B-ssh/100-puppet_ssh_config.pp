#!/usr/bin/env bash
# Ruby script to manage ssh_config file using Puppet
file_line {'PasswordAuthentication': 
      ensure => 'present',
      path => '~/etc/ssh/ssh_config',
	line => 'no'
}
file_line {'IdentityFile': 
      ensure => 'present', 
      path => '~/etc/ssh/ssh_config',
	line => '~/.ssh/school'
}
