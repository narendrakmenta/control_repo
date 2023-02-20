class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@10.0.2.15':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+BlPrTQ05mdb199fscBGG5AYBky/9j6CHyl534iydBhDj3sn8vsmB+t0KaytVIPBAb+dRZyzfOgsfS/ABFARuj2QZdJqIPM//IKOyClJYuPAkb/XON1sr9gCQAXjBX24MhvINJUQlRiddSQkX3SoWGfJOtEveaw2iV1KGs7PX3HOGGBWbhvLyGTxZvB9WDjQ8MD7FqYQ0ZyyRxmj0kws7XRsSx70VdtPaEoEe3Nmk5N9lqF/nyDn9nZoLDrRdc0R/5u6T6RNj48VhieHVRV8K2jbpgqJcKW6/FOdBRh6zsjcwnokN4c4t36gVXAH1Aj8087llvy0cy/d6UF6yKWol',
  }  
}
