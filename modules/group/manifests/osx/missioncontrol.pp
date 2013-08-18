class group::osx::missioncontrol {

  notify { 'class group::osx::missioncontrol declared': }

  boxen::osx_defaults {
    'Disable auto-rearrange on Spaces':
      ensure => present,
      key    => 'mru-spaces',
      domain => 'com.apple.dock',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Don’t group windows by application in Mission Control':
      ensure => present,
      key    => 'expose-group-by-app',
      domain => 'com.apple.dock',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable the dashboard':
      ensure => present,
      key    => 'mcx-disabled',
      domain => 'com.apple.dashboard',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Don’t show Dashboard as a Space':
      ensure => present,
      key    => 'dashboard-in-overlay',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }


}
