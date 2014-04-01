class projects::denny {

  notify { 'class projects::denny declared': }

  boxen::project { 'denny':
    mysql         => true,
    redis         => false,
    ruby          => '2.0.0',
    dir           => "${boxen::config::srcdir}/denny",
    source        => 'plyfe/denny',
  }

  # Hosts file entries for the project.
  host { "denny-development.plyfe.me":
    ip => "127.0.0.1",
  }

}
