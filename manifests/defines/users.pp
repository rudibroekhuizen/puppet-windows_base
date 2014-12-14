# == Define: windows_base::defines::users
#
define windows_base::defines::users (

  $comment  = undef,
  $password = undef,
  #$email   = undef,
  $groups   = undef,
  $ensure   = undef,
  ){

  user { $title:
    comment  => $comment,
    password => $password,
    #email   => $email,
    groups   => $groups,
    ensure   => $ensure,
  }

}
