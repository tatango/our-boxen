class people::liggsie::homebrew {

  notify { 'class people::liggsie::homebrew declared': }

  package {
    [
      'sqlite',
      'synergy',
      'tree'
    ]:
  }

}
