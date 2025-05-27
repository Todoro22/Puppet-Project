class todoro_ntp {
  Class['todoro_ntp::params'] ->
  Class['todoro_ntp::install'] ->
  Class['todoro_ntp::config'] ->
  Class['todoro_ntp::service']

  include todoro_ntp::params
  include todoro_ntp::install
  include todoro_ntp::config
  include todoro_ntp::service
}
