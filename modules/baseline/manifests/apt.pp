class baseline::apt {

  class { 'apt':
    update => { frequency => 'daily', }
    purge  => { 'sources.list.d' => true, }
  }

  $base_packages = [ 'fail2ban', 'mosh', 'ufw', 'vim', 'unattended-upgrades', 'lsb-release']
  package { $base_packages:
    ensure => latest,
  }

# This may or may not be magically applied by pkg unattended upgrades :/
  file_line { 'apt-upgrade':
    path => '/etc/apt/apt.conf.d/50unattended-upgrades',
    match => '//[\w\t]*"\$\{distro_id\}:\$\{distro_codename\}-updates";',
    line => '	"${distro_id}:${distro_codename}-updates";',
    require => Package['unattended-upgrades'],
  }

  file_line { 'apt-autoremove':
    path => '/etc/apt/apt.conf.d/50unattended-upgrades',
    match => '//[\w\t]*Unattended-Upgrade::Remove-Unused-Dependencies ".*";',
    line => 'Unattended-Upgrade::Remove-Unused-Dependencies "true";',
    require => Package['unattended-upgrades'],
  }

  file_line { 'apt-reboot':
    path => '/etc/apt/apt.conf.d/50unattended-upgrades',
    match => '//[\w\t]*Unattended-Upgrade::Automatic-Reboot ".*";',
    line => 'Unattended-Upgrade::Automatic-Reboot "true";',
    require => Package['unattended-upgrades'],
  }

}
