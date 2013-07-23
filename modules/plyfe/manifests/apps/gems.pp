class plyfe::apps::gems {

  notify { 'class plyfe::apps::gems declared': }

  ruby::gem {
    "bundler for 1.9.3":
      gem     => 'bundler',
      ruby    => '1.9.3',
      version => '~> 1.3.5';

    "pry for 1.9.3":
      gem     => 'pry',
      ruby    => '1.9.3',
      version => '~> 0.9.12';

    "debugger for 1.9.3":
      gem     => 'debugger',
      ruby    => '1.9.3',
      version => '~> 1.6.1';
  }

}
