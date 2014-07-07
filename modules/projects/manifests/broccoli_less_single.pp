class projects::broccoli_less_single {

  notify { 'class projects::broccoli_less_single declared': }

  boxen::project { 'broccoli_less_single':
    dir           => "${boxen::config::srcdir}/broccoli-less-single",
    source        => 'plyfe/broccoli-less-single',
  }

}
