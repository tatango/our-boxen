class projects::factorialsystemsca {

  notify { 'class projects::factorialsystemsca declared': }

  boxen::project { 'factorialsystems.ca':
    ruby          => '1.9.3',
    dir           => "${boxen::config::srcdir}/factorialsystems.ca",
    source        => 'dliggat/factorialsystems.ca',
  }

}
