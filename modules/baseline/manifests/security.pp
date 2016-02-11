class baseline::security {

  include ufw

  ufw::allow { "allow-ssh":
    port => 22,
  }

}
