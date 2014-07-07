class projects::plyfe_documentation {

  notify { 'class projects::plyfe_documentation declared': }

  boxen::project { 'plyfe_documentation':
    dir           => "${boxen::config::srcdir}/plyfe-documentation",
    source        => 'plyfe/plyfe-documentation',
  }

}
