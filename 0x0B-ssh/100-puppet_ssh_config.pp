# Automates ssh_config configuration
include stdlib
file_line { 'PasswordAuthentication':
ensure  => 'present',
path    => 'etc/ssh/ssh_config',
line    => 'PasswordAuthentication no',
replace => true,
}

file_line { 'IdentityFile':
ensure  => 'present',
path    => '/etc/ssh/ssh_config',
line    => '     IdentityFile ~/.ssh/school',
replace => true,
}
