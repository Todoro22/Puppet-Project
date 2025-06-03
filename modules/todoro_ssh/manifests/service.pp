class todoro_ssh::service {
  service { $todoro_ssh::params::ssh_service:
    ensure => running,
    enable => true,
  }
}
