node 'cnx.lauren.fi' {
  include baseline
  include puppetserver
}

node default {
  notify { "Hello, $fqdn!": }
  include baseline
}
