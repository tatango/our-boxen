class projects::plyfecom {

  notify { 'class projects::plyfecom declared': }

  boxen::project { 'plyfecom':
    dir           => "${boxen::config::srcdir}/plyfecom",
    source        => 'plyfe/plyfecom',
  }

}
