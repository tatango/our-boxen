class people::dliggat::homebrew {

  notify { 'class people::dliggat::homebrew declared': }

  package {
    [
      'pwgen',
      'tree'
    ]:
  }

}
