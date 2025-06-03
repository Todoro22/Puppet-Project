class todoro_ssh::install {
  package { $todoro_ssh::params::ssh_package:
    ensure => installed,
  }
}
