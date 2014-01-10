class projects::plyfe_hubot {

  notify { 'class projects::plyfe_hubot declared': }

  boxen::project { 'plyfe_hubot':
    mysql         => false,
    redis         => true,
    ruby          => '2.0.0',
    dir           => "${boxen::config::srcdir}/plyfe-hubot",
    source        => 'plyfe/plyfe-hubot',
  }

  # Homebrew packages for the project.
  package {
    [
      'heroku-toolbelt'
    ]:
  }

}
