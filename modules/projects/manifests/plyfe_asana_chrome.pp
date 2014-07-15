class projects::plyfe_asana_chrome {

  notify { 'class projects::plyfe_asana_chrome declared': }

  boxen::project { 'plyfe_asana_chrome':
    dir           => "${boxen::config::srcdir}/plyfe-asana-chrome",
    source        => 'plyfe/plyfe-asana-chrome',
  }

}
