class projects::plyfekit_ruby {

  notify { 'class projects::plyfekit_ruby declared': }

  boxen::project { 'plyfekit_ruby':
    mysql         => true,
    redis         => true,
    ruby          => '1.9.3',
    dir           => "${boxen::config::srcdir}/plyfekit-ruby",
    source        => 'plyfe/plyfekit-ruby',
  }

}
