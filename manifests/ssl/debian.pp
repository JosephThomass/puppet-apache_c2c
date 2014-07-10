class apache_c2c::ssl::debian inherits apache_c2c::base::ssl {

  if $::apache_c2c::backend != 'puppetlabs' {
    apache_c2c::module {'ssl':
      ensure => present,
    }
  }

  if !defined(Package['ca-certificates']) {
    package { 'ca-certificates':
      ensure => present,
    }
  }
}
