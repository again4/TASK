class roles::k8s {
if $facts['serverrole'] ==  'k8s-master' or $facts['serverrole'] ==  'k8s-worker'  {
    include profile::k8s::init
  }
}


class roles {
  include roles::k8s
}
