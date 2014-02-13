class projects::ember_json_api {

  notify { 'class projects::ember_json_api declared': }

  boxen::project { 'ember_json_api':
    mysql         => false,
    redis         => true,
    dir           => "${boxen::config::srcdir}/ember-json-api",
    source        => 'plyfe/ember-json-api',
  }

  nodejs::module {
    'grunt-cli':
      node_version => 'v0.10';
  }

}
