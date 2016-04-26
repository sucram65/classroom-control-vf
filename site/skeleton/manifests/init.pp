class skeleton {
 file { '/etc/skeleton':
   ensure => directory,
   owner => 'root',
   group => 'group',
   mode => '0755',
   }
 file { '/etc/skel/.bashrc',
   ensure => file,
   owner => 'root',
   group => 'root',
   mode => '0644',
   source => 'puppet:///modules/skeleton/bashrc',
  }
}
