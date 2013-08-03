class people::liggsie::config::homebrew {

  notify { 'class people::liggsie::config::homebrew declared': }

  package {
    [
      'heroku-toolbelt',
      'pidof',
      'sl',
      'sqlite',
      'synergy',
      'tree'
    ]:
  }

}
