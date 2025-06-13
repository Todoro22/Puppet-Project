class todoro_ssh_hiera {
  $ssh_port     = lookup('todoro_ssh::ssh_port')
  $ssh_service  = lookup('todoro_ssh::ssh_service')

  file { '/etc/ssh/sshd_config':
    ensure  => file,
    content => epp('todoro_ssh/sshd_config.epp', {
      'ssh_port' => $ssh_port,
    }),
    notify  => Service[$ssh_service],
  }

  service { $ssh_service:
    ensure => running,
    enable => true,
  }
}
