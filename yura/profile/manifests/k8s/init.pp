class profile::k8s::init {
  if ($facts['os']['name'] == 'CentOS' or $facts['os']['family'] == 'Debian') and $facts['serverrole'] == 'k8s-master' {
    class { 'kubernetes':
      controller => true,
    }
  }

  if ($facts['os']['name'] == 'CentOS' or $facts['os']['family'] == 'Debian') and $facts['serverrole'] == 'k8s-worker' {
    class { 'kubernetes':
      worker => true,
    }
  }
}
