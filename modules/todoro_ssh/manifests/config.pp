class todoro_ssh::config {
  $ssh_port = $todoro_ssh::params::ssh_port

  file { '/etc/ssh/sshd_config':
    ensure  => file,
    content => epp('todoro_ssh/sshd_config.epp', { 'ssh_port' => $ssh_port }),
    notify  => Service[$todoro_ssh::params::ssh_service],
  }
}

