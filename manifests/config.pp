# == Class: windows_base::config
#
class windows_base::config {

# Make sure hosts file is ok. Did not use fqdn, if used Oracle gives error message: PRKN-1019.
  host { $::hostname:
    ensure       => 'present',
    ip           => $::ipaddress,
  }

  host { 'localhost':
    ensure => 'present',
    ip     => '127.0.0.1',
  }

}
