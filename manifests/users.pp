# == Class: windows_base::users
#
class windows_base::users {

  create_resources('windows_base::defines::users', $windows_base::users_hash, $windows_base::users_attribute_defaults)

}
