class group::apps::gems {

  notify { 'class group::apps::gems declared': }

  ruby::gem {
    "bundler for 1.9.3":
      gem     => 'bundler',
      ruby    => '1.9.3',
      version => '~> 1.3.5';

    "rails for 1.9.3":
      gem     => 'rails',
      ruby    => '1.9.3',
      version => '~> 3.2.13';

    "rspec for 1.9.3":
      gem     => 'rspec',
      ruby    => '1.9.3',
      version => '~> 2.13.0';

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
