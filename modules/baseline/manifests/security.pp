class baseline::security {

  include ufw

  ufw::allow { "allow-ssh":
    port => 22,
  }

  # rate-limit ssh connections to 6/30sec
  ufw::limit { 22: }

}
