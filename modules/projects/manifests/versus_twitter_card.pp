class projects::versus_twitter_card {

  notify { 'class projects::versus_twitter_card declared': }

  boxen::project { 'versus_twitter_card':
    dir           => "${boxen::config::srcdir}/versus-twitter-card",
    source        => 'plyfe/versus-twitter-card',
  }

}
