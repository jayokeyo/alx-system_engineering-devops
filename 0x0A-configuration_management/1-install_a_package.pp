# Install flask using pip3 if not installed
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
