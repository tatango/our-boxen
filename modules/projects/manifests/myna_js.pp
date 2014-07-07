class projects::myna_js {

  notify { 'class projects::myna_js declared': }

  boxen::project { 'myna_js':
    dir           => "${boxen::config::srcdir}/myna-js",
    source        => 'plyfe/myna-js',
  }

}
