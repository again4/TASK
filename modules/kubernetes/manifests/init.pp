class kubernetes (
  Boolean $controller                                     = false,
  Boolean $worker                                         = false,
)
 {
  if $controller {
    package { 'vim':
      ensure => installed,
    }
  }

  if $worker {
    package { 'iptables':
      ensure => installed,
    }
  }
}
