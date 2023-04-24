# Create a file /tmp/school if doesn't exist and apply attributes
file { '/tmp/school':
  ensure  => 'present',
  path    => '/tmp/school',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet'
}
