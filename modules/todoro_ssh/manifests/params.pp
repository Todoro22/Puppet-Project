class todoro_ssh::params {
  if $facts['virtual'] == 'physical' {
    $ssh_port = 23
  } else {
    $ssh_port = 24
  }

  $ssh_package = 'openssh-server'
  $ssh_service = 'ssh'
}
