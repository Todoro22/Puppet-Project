class todoro_apache::config {
  file { '/etc/apache2/ports.conf':
    ensure  => file,
    content => "Listen ${todoro_apache::params::listen_port}\n",
    notify  => Service[$todoro_apache::params::apache_service],
  }

  file { '/etc/apache2/sites-available/000-default.conf':
    ensure  => file,
    content => epp($todoro_apache::params::vhost_template),
    notify  => Service[$todoro_apache::params::apache_service],
  }

  file { "${todoro_apache::params::document_root}/index.html":
    ensure  => file,
    content => epp('todoro_apache/index.html.epp', {
      'uptime' => $facts['system_uptime']['uptime'],
      'time'   => strftime('%H:%M:%S'),
      'os'     => $facts['os']['name'],
      'version'=> $facts['os']['release']['full'],
    }),
    notify  => Service[$todoro_apache::params::apache_service],
  }
}
