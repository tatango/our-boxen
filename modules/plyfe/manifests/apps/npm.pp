class plyfe::apps::npm {

  notify { 'class plyfe::apps::npm declared': }

  nodejs::module {
    'coffee-script':
      node_version => 'v0.10';

    'jshint':
      node_version => 'v0.10';
  }

}
