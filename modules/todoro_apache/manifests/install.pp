class todoro_apache::install {
  package { $todoro_apache::params::apache_package:
    ensure => installed,
  }
}
