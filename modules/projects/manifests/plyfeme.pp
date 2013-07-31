class projects::plyfeme {

  notify { 'class projects::plyfeme declared': }

  boxen::project { 'plyfeme':
    mysql         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'plyfe/plyfeme'
  }

  # Homebrew packages for the project.
  package {
    [
      'casperjs',
      'imagemagick',
      's3cmd'
    ]:
  }

  # QT Package. Install from dmg rather than homebrew as it builds from source by default in the latter
  # and takes forever.
  package { 'QT':
    ensure   => installed,
    source   => 'http://download.qt-project.org/official_releases/qt/5.1/5.1.0/qt-mac-opensource-5.1.0-clang-offline.dmg',
    provider => appdmg,
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

  # MySql socket.
  # TODO: Eventually, replace /tmp/mysql.sock within database.yml, rendering this unnecessary.
  file { "/tmp/mysql.sock":
    ensure  => link,
    target  => "${::boxen_home}/data/mysql/socket"
  }

  # TODO automate:
  # - redis port... set to 16379, app expects 6379.
  # - Install hall binary (no package yet on github.com/boxen)
  # - Install certificate
  # - (maybe) install plyfeec2 key
  # - Set up sensible sublime defaults - should be a user level module.

}
