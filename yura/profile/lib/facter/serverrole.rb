Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'PostgreSQL' if File.exist? '/etc/serverrole/postgresql'
  end
end

#Role k8s-postgres
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'k8s-postgres' if File.exist? '/etc/serverrole/k8s-postgres'
  end
end

# Role k8s-master
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'k8s-master' if File.exist? '/etc/serverrole/k8s-master'
  end
end

# Role k8s-worker
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'k8s-worker' if File.exist? '/etc/serverrole/k8s-worker'
  end
end

# Role nfs-server
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'nfs-server' if File.exist? '/etc/serverrole/nfs-server'
  end
end

# Role nginx
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'nginx' if File.exist? '/etc/serverrole/nginx'
  end
end

# Role monitoring
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'monitoring' if File.exist? '/etc/serverrole/monitoring'
  end
end

# Role openvidu
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'openvidu' if File.exist? '/etc/serverrole/openvidu'
  end
end

# Role docker
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'docker' if File.exist? '/etc/serverrole/docker'
  end
end

# Role keeplived-master
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'keepalived-master' if File.exist? '/etc/serverrole/keepalived-master'
  end
end

# Role keeplived-slave-101
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'keepalived-slave-101' if File.exist? '/etc/serverrole/keepalived-slave-101'
  end
end

# Role keeplived-slave-102
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'keepalived-slave-102' if File.exist? '/etc/serverrole/keepalived-slave-102'
  end
end

# Role testarray 1
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'test1' if File.exist? '/etc/serverrole/test1'
  end
end

# Role testarray 2
Facter.add(:serverrole) do
  has_weight 50
  setcode do
    'test2' if File.exist? '/etc/serverrole/test2'
  end
end

# If this server doesn't look like a server, it must be a desktop
Facter.add(:serverrole) do
  setcode do
    'N/A'
  end
end
