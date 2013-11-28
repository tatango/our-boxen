class group::osx::system {

  notify { 'class group::osx::system declared': }

  boxen::osx_defaults {
    'Disable menu bar transparency':
      ensure => present,
      key    => 'AppleEnableMenuBarTransparency',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Save to disk (not to iCloud) by default':
      ensure => present,
      key    => 'NSDocumentSaveNewDocumentsToCloud',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable the “Are you sure you want to open this application?” dialog':
      ensure => present,
      key    => 'LSQuarantine',
      domain => 'com.apple.LaunchServices',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable automatic termination of inactive apps':
      ensure => present,
      key    => 'NSDisableAutomaticTermination',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Check for software updates once a week':
      ensure => present,
      key    => 'ScheduleFrequency',
      domain => 'com.apple.SoftwareUpdate',
      value  => '7',
      type   => 'int',
      user   => $::boxen_user;

    'Set 24 hour clock in menu bar':
      ensure => present,
      key    => 'DateFormat',
      domain => 'com.apple.menuextra.clock',
      value  => 'HH:mm',
      type   => 'string',
      user   => $::boxen_user;
  }

}
