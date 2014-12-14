# == Define: windows_base::defines::packages
#
define windows_base::defines::packages (

  $ensure   = undef,
  $provider = undef,
  ) {

  package { $title:
    ensure   => $ensure,
    provider => $provider,
  }

}
