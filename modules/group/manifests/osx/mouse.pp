class group::osx::mouse {

  notify { 'class group::osx::mouse declared': }

  boxen::osx_defaults {
    'Trackpad: Enable tap to click':
      ensure => present,
      key    => 'Clicking',
      domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Magic Mouse - secondary click':
      ensure => present,
      key    => 'MouseButtonMode',
      domain => 'com.apple.driver.AppleBluetoothMultitouch.mouse',
      value  => 'TwoButton',
      type   => 'string',
      user   => $::boxen_user;

    'Trackpad: swipe between pages with three fingers':
      ensure => present,
      key    => 'AppleEnableSwipeNavigateWithScrolls',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable three-finger horizontal swipe':
      ensure => present,
      key    => 'TrackpadThreeFingerHorizSwipeGesture',
      domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
      value  => '1',
      type   => 'int',
      user   => $::boxen_user;
  }


}
