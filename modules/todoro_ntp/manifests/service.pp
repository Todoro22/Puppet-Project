class todoro_ntp::service {
  service { $todoro_ntp::params::ntp_service:
    ensure => running,
    enable => true,
  }
}
