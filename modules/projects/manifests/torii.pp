class projects::torii {

  notify { 'class projects::torii declared': }

  boxen::project { 'torii':
    dir           => "${boxen::config::srcdir}/torii",
    source        => 'plyfe/torii',
  }

}
