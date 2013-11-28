class projects::liggatorg {

  notify { 'class projects::liggatorg declared': }

  boxen::project { 'liggat.org':
    ruby          => '1.9.3',
    dir           => "${boxen::config::srcdir}/liggat.org",
    source        => 'dliggat/dliggat.github.io',
  }

}
