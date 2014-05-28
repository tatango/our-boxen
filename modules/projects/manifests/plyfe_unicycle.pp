class projects::plyfe_unicycle {

  notify { 'class projects::plyfe_unicycle declared': }

  boxen::project { 'plyfe_unicycle':
    dir           => "${boxen::config::srcdir}/plyfe-unicycle",
    source        => 'plyfe/plyfe-unicycle',
  }

}
