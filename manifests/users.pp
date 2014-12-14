# == Class: windows_base::users
#
class windows_base::users (
  $users_hash,
  $users_attribute_defaults,
  ){

  create_resources('windows_base::defines::users', $users_hash, $users_attribute_defaults)
}
