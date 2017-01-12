# There is no cnx at the mo

node 'cnx.lauren.fi' {
  include baseline
}

node default {
  notify { "Hello, $fqdn!": }
  include baseline
}
