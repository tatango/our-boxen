class people::liggsie::homebrew {

  notify { 'class people::liggsie::homebrew declared': }

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
