class todoro_ntp::params {
  if $facts['os']['family'] == 'Debian' {
    $ntp_package = 'ntp'
    $ntp_service = 'ntp'
  } elsif $facts['os']['family'] == 'RedHat' {
    $ntp_package = 'ntp'
    $ntp_service = 'ntpd'
  } else {
    fail("Unsupported OS family: ${facts['os']['family']}")
  }
}
