class projects::plyfeme {

  notify { 'class projects::plyfeme declared': }

  boxen::project { 'plyfeme':
    mysql         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'plyfe/plyfeme'
  }

  package {
    [
      'casperjs',
      'imagemagick',
      # 'qt',  # TODO: do we really need this? Takes ages to install.
      'redis'
    ]:
  }

  # TODO initial setup:
  # Database raking not working natively. plyfedbdude cannot connect through socket. Fix.

  # TODO automate:
  # - Hosts file jigging
  # - Set up plyfedbdude user
  # - Set up socket for mysql
  # - Start mysql on reboot
  # - Start redis
  # - Install hall binary (no package yet on github.com/boxen)
  # - Install certificate
  # - (maybe) install plyfeec2 key
  # - Set up sensible sublime defaults - should be a user level module.


}
