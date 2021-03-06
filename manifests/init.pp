# == Class: windows_base
#
# Full description of class windows_base here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { windows_base:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class windows_base (
  $packages_attribute_defaults = { ensure   => installed,
                                   provider => chocolatey,
                                 },

  $packages_hash = { 'putty'  => { ensure   => latest,
                                   provider => chocolatey,
                                 },

                     'git'    => { ensure   => latest,
                                   provider => chocolatey, 
                                 },

                   },
              
  $users_attribute_defaults = { ensure => present,
                              },
                             
  $users_hash = { 'rudi.broekhuizen' => { comment  => 'Rudi Broekhuizen',
                                          password => 'Passw0rd',
                                          #email   => 'rudi.broekhuizen@naturalis.nl',
                                          groups   => ['Administrators'],
                                        }
                },
  ) {

# General configuration
  class {'windows_base::config':
  }

# Install files
  class {'windows_base::files':
    require => Class["windows_base::config"],
  }

# Install packages
  class {'windows_base::packages':
    require => Class["windows_base::files"],
  }

# Install users
  class {'windows_base::users':
    require => Class["windows_base::packages"],
  }
  
}
