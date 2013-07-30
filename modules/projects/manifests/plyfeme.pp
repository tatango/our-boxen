class projects::plyfeme {

  notify { 'class projects::plyfeme declared': }

  boxen::project { 'plyfeme':
    mysql         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'plyfe/plyfeme'
  }

  # Brew packages for the project.
  package {
    [
      'casperjs',
      'imagemagick'
      #'qt'                 # Consider installing this as a zip file instead.
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

  # MySql socket.
  # TODO: Eventually, replace /tmp/mysql.sock within database.yml, rendering this unnecessary.
  file { "/tmp/mysql.sock":
    ensure  => link,
    target  => "${boxen::config}/data/mysql/socket"
  }


  # TODO automate:
  # - Set up socket for mysql
  # - Set up plyfedbdude user: pull this into a script
  # - Start redis
  # - do the initial rake without the initial drop
  # - Start mysql on reboot
  # - Install hall binary (no package yet on github.com/boxen)
  # - Install certificate
  # - (maybe) install plyfeec2 key
  # - Set up sensible sublime defaults - should be a user level module.


}
