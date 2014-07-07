class projects::plyfe_cookbooks {

  notify { 'class projects::plyfe_cookbooks declared': }

  boxen::project { 'plyfe_cookbooks':
    dir           => "${boxen::config::srcdir}/plyfe-cookbooks",
    source        => 'plyfe/plyfe-cookbooks',
  }

}
