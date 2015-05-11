# == Class: windows_base::config
#
class windows_base::config {

# Make sure hosts file is ok. Did not use fqdn, if used Oracle gives error message: PRKN-1019.
  host { $::hostname:
    ensure => 'present',
    ip     => $::ipaddress,
  }

  host { 'localhost':
    ensure => 'present',
    ip     => '127.0.0.1',
  }

# Set disk space threshold to 10% to activate event id 2013
  registry::value { 'DiskSpaceThreshold':
    key   => 'HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters',
    value => 'DiskSpaceThreshold',
    type  => 'dword',
    data  => '10',
  }

# Set low disk space minimum to 0 to activate event id 2013
  registry::value { 'LowDiskSpaceMinimum':
    key   => 'HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters',
    value => 'LowDiskSpaceMinimum',
    type  => 'dword',
    data  => '0',
  }

}
