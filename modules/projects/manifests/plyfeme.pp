class projects::plyfeme {

  notify { 'class projects::plyfeme declared': }

  boxen::project { 'plyfeme':
    mysql         => true,
    redis         => true,
    ruby          => '1.9.3',
    dir           => "${boxen::config::srcdir}/plyfeme",
    source        => 'plyfe/plyfeme',
  }

  # Homebrew packages for the project.
  package {
    [
      # 'ec2-api-tools',   # Needed for chef stuff eventually.
      'casperjs',
      'imagemagick',
      's3cmd',
      'libxslt',
      'libxml2',
      'qt'
    ]:
  }

  # Hosts file entries for the project.
  host { "development.plyfe.me":
    ip => "127.0.0.1",
  }
  host { "en.development.plyfe.me":
    ip => "127.0.0.1",
  }
  host { "es.development.plyfe.me":
    ip => "127.0.0.1",
  }
  host { "development-rds.plyfe.me":
    ip => "127.0.0.1",
  }
  host { "development-qb.plyfe.me":
    ip => "127.0.0.1",
  }
  host { "embed-development.plyfe.me":
    ip => "127.0.0.1",
  }
  host { "platform-development.plyfe.me":
    ip => "127.0.0.1",
  }

  # Create the project tmp directory (used for JasmineHeadlessWebkit and not in the git repo).
  file { "${boxen::config::srcdir}/plyfeme/tmp":
    ensure  => "directory",
    require => Boxen::Project['plyfeme']
  }

  # MySql socket.
  # TODO: Eventually, replace /tmp/mysql.sock within database.yml, rendering this unnecessary.
  file { "/tmp/mysql.sock":
    ensure  => link,
    target  => "${::boxen_home}/data/mysql/socket"
  }
  ->
  notify {'after message':
    message => "This is a test of the anonymous precedence functionality in Puppet.",
  }

}
