class projects::plyfe_cms {

  notify { 'class projects::plyfe_cms declared': }

  boxen::project { 'plyfe_cms':
    dir           => "${boxen::config::srcdir}/plyfe-cms",
    source        => 'plyfe/plyfe-cms',
  }

}
