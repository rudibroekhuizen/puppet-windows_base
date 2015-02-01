# == Class: windows_base::files
#
class windows_base::files {

# Puppetfile for r10k
  file { 'C:/ProgramData/PuppetLabs/puppet/etc/Puppetfile':
    source             => 'puppet:///modules/windows_role_base/Puppetfile',
    source_permissions => ignore,
  }

# Hiera config file
  file { 'C:/ProgramData/PuppetLabs/puppet/etc/hiera.yaml':
    source             => 'puppet:///modules/windows_base/hiera.yaml',
    source_permissions => ignore,
  }

# Hiera user data, stored in windows_role_base
  file { 'C:/ProgramData/PuppetLabs/hiera/var':
    source             => 'puppet:///modules/windows_role_base',
    recurse            => true
    source_permissions => ignore,
  }

# Hiera user data, stored in windows_role_base
# file { 'C:/ProgramData/PuppetLabs/hiera/var/global.yaml':
#   source             => 'puppet:///modules/windows_role_base/global.yaml',
#   source_permissions => ignore,
# }

}
