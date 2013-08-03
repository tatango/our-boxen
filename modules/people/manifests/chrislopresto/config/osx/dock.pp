class osx_config::dock {

  boxen::osx_defaults {
    'Set the icon size of Dock items':
      ensure => present,
      key    => 'tilesize',
      domain => 'com.apple.dock',
      value  => '25',
      type   => 'int',
      user   => $::boxen_user;

    'Enable dock magnification':
      ensure => present,
      key    => 'magnification',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Set the icon size of Dock magnifications':
      ensure => present,
      key    => 'largesize',
      domain => 'com.apple.dock',
      value  => '30',
      type   => 'int',
      user   => $::boxen_user;
  }

}