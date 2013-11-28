class group::osx::textedit {

  notify { 'class group::osx::textedit declared': }

  boxen::osx_defaults {
    'Use plain text mode for new TextEdit documents':
      ensure => present,
      key    => 'RichText',
      domain => 'com.apple.TextEdit',
      value  => '0',
      type   => 'int',
      user   => $::boxen_user;

    'Open files as UTF-8 in TextEdit':
      ensure => present,
      key    => 'PlainTextEncoding',
      domain => 'com.apple.TextEdit',
      value  => '4',
      type   => 'int',
      user   => $::boxen_user;

    'Save files as UTF-8 in TextEdit':
      ensure => present,
      key    => 'PlainTextEncodingForWrite',
      domain => 'com.apple.TextEdit',
      value  => '4',
      type   => 'int',
      user   => $::boxen_user;
  }

}
