class projects::plyfe_widgets {

  notify { 'class projects::plyfe_widgets declared': }

  boxen::project { 'plyfe_widgets':
    dir           => "${boxen::config::srcdir}/plyfe-widgets",
    source        => 'plyfe/plyfe-widgets',
  }

}
