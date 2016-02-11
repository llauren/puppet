node default {
  notify { "Hello, $fqdn!": }
  include baseline
}
