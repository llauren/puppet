class baseline::puppet {

  notify { "Puppet stuff...": }

  service { 'puppet':
    ensure => 'running',
    enable => 'true',
  }

  file { '/usr/local/bin/puppet':
    ensure => link,
    target => '/opt/puppetlabs/bin/puppet',
    mode => '0755',
  }

}
