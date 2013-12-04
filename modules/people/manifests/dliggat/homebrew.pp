class people::dliggat::homebrew {

  notify { 'class people::dliggat::homebrew declared': }

  package {
    [
      'exiftool',
      'pwgen',
      'tree'
    ]:
  }

}
