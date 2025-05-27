class todoro_ntp::install {
  package { $todoro_ntp::params::ntp_package:
    ensure => installed,
  }
}
