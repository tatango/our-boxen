class projects::plyfe_control {

  notify { 'class projects::plyfe_control declared': }

  boxen::project { 'plyfe_control':
    dir           => "${boxen::config::srcdir}/plyfe-control",
    source        => 'plyfe/plyfe-control',
  }

}
