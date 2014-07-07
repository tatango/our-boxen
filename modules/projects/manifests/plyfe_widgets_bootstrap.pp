class projects::plyfe_widgets_bootstrap {

  notify { 'class projects::plyfe_widgets_bootstrap declared': }

  boxen::project { 'plyfe_widgets_bootstrap':
    dir           => "${boxen::config::srcdir}/plyfe-widgets-bootstrap",
    source        => 'plyfe/plyfe-widgets-bootstrap',
  }

}
