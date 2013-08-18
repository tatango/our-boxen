class group::apps::npm {

  notify { 'class group::apps::npm declared': }

  nodejs::module {
    'coffee-script':
      node_version => 'v0.10';

    'coffeelint':
      node_version => 'v0.10';

    'jshint':
      node_version => 'v0.10';
  }

}
