class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDMua8EPW/SqeuefZlyqPWnVeICrAesaibVagyKn3m1d+dIgWI52k902ToE6vAadSGnfYChd9shvuTIDKz3nSiS3rfos74diF+9L/eiVNd+UiT48rrL5D2rP0+168yHKHq6NJrAdUSnK1j1SjSsSy3bJKzP1g0Rg/MOml6ruGyILv/EPOJDy1DE8gdBHhRUqiTSIA8wrNgyQHzJgoiycfKtswquAzEhXtNG9EjWaTdJX/8ghtG3gLoi2Bj3gEgcMWYSS9JEU+if/nHVTDCjW2jzZTgMbbkRYy24EkxOCGiwTNENHa3qZnLDZh0R499OtyHIM5r/zjvx0NgWCK+o8xYT',
	}  
}
