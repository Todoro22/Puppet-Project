class todoro_ntp::config {
  file { '/etc/ntp.conf':
    ensure  => file,
    content => template('todoro_ntp/ntp.conf.erb'),
    notify  => Service[$todoro_ntp::params::ntp_service],
  }
}
