class todoro_apache {
  Class['todoro_apache::params']
  -> Class['todoro_apache::install']
  -> Class['todoro_apache::config']
  -> Class['todoro_apache::service']

  include todoro_apache::params
  include todoro_apache::install
  include todoro_apache::config
  include todoro_apache::service
}
