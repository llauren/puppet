node /cn*.lauren.fi/ {
	include baseline
	include ::telegraf
}

node default {
  notify { "Hello, $fqdn!": }
  include baseline
}
