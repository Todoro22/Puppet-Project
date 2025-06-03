class todoro_ssh {
  Class['todoro_ssh::params'] ->
  Class['todoro_ssh::install'] ->
  Class['todoro_ssh::config'] ->
  Class['todoro_ssh::service']

  include todoro_ssh::params
  include todoro_ssh::install
  include todoro_ssh::config
  include todoro_ssh::service
}
