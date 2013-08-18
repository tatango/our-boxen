class group::osx::timemachine {

  notify { 'class group::osx::timemachine declared': }

  boxen::osx_defaults {
    'Prevent Time Machine from prompting to use new hard drives as backup volume':
      ensure => present,
      key    => 'DoNotOfferNewDisksForBackup',
      domain => 'com.apple.TimeMachine',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
