# == Class: windows_base::packages
#
class windows_base::packages (
  $packages_hash,
  $packages_attribute_defaults,
  ){
  create_resources('windows_base::defines::packages', $packages_hash, $packages_attribute_defaults)
  
}
