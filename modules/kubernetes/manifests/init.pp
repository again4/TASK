class kubernetes (
  Boolean $controller                                     = false,
  Boolean $worker                                         = false,
  Boolean $manage_kernel_modules                          = true,
  Boolean $manage_sysctl_settings                         = true,
)
 {
  if $controller {
if $manage_kernel_modules and $manage_sysctl_settings {
    kmod::load { 'overlay': }
    kmod::load { 'br_netfilter':
      before => Sysctl['net.bridge.bridge-nf-call-iptables'],
    }
    sysctl { 'net.bridge.bridge-nf-call-iptables':
      ensure => present,
      value  => '1',
      before => Sysctl['net.ipv4.ip_forward'],
    }
    sysctl { 'net.ipv4.ip_forward':
      ensure => present,
      value  => '1',
    }
  } elsif $manage_kernel_modules {
    kmod::load { 'overlay': }
    kmod::load { 'br_netfilter': }
  } elsif $manage_sysctl_settings {
    sysctl { 'net.bridge.bridge-nf-call-iptables':
      ensure => present,
      value  => '1',
      before => Sysctl['net.ipv4.ip_forward'],
    }
    sysctl { 'net.ipv4.ip_forward':
      ensure => present,
      value  => '1',
    }
  }


  }

  if $worker {
    package { 'iptables':
      ensure => installed,
    }
  }
}
