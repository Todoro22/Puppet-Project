

class todoro_apache::service {
  service { $todoro_apache::params::apache_service:
    ensure => running,
    enable => true,
    require => Package[$todoro_apache::params::apache_package],
  }
}
