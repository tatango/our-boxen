class group::osx::dock {

  notify { 'class group::osx::dock declared': }

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

    'Put dock on the left edge':
      ensure => present,
      key    => 'orientation',
      domain => 'com.apple.dock',
      value  => 'left',
      type   => 'string',
      user   => $::boxen_user;

    'Use new-style stack view on dock folders':
      ensure => present,
      key    => 'use-new-list-stack',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable spring loading for all Dock items':
      ensure => present,
      key    => 'enable-spring-load-actions-on-all-items',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show indicator lights for open applications in the Dock':
      ensure => present,
      key    => 'show-process-indicators',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

  }

}
