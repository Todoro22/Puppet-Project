class todoro_apache::params {
  $apache_package = 'apache2'
  $apache_service = 'apache2'
  $vhost_template = 'todoro_apache/000-default.conf.epp'
  $document_root = '/var/www/html'
  $listen_port = 84
}
