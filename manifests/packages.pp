# == Class: windows_base::packages
#
class windows_base::packages {

  create_resources('windows_base::defines::packages', $windows_base::packages_hash, $windows_base::packages_attribute_defaults)
  
}
