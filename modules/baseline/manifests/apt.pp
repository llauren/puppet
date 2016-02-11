class baseline::apt {

#  class { 'apt':
#    update => { frequency => 'daily', }
#  }

  $base_packages = [ 'fail2ban', 'mosh', 'ufw', 'vim', 'unattended-upgrades']
  package { $base_packages:
    ensure => latest,
  }

# This may or may not be magically applied by pkg unattended upgrades :/
  file_line { 'apt-upgrade':
    path => '/etc/apt/apt.conf.d/50unattended-upgrades',
    match => '//\t"\$\{distro_id\}:\$\{distro_codename\}-updates";',
    line => '\t"\$\{distro_id\}:\$\{distro_codename\}-updates";',
    require => Package['unattened-upgrades'],
  }

  file_line { 'apt-reboot':
    path => '/etc/apt/apt.conf.d/50unattended-upgrades',
    match => '[/\w]*Unattended-Upgrade::Automatic-Reboot "false";',
    line => '\tUnattended-Upgrade::Automatic-Reboot "true";',
    require => Package['unattened-upgrades'],
  }

}
