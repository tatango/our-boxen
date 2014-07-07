class projects::ember_cli_pretender {

  notify { 'class projects::ember_cli_pretender declared': }

  boxen::project { 'ember_cli_pretender':
    dir           => "${boxen::config::srcdir}/ember-cli-pretender",
    source        => 'plyfe/ember-cli-pretender',
  }

}
