node 'cnx.lauren.fi' {
  include baseline
  include puppetserver
}

# this might not go too well, as cnx will resolve to both these

node /cn*.lauren.fi/ {
	include baseline
	include ::telegraf
}

node default {
  notify { "Hello, $fqdn!": }
  include baseline
}
