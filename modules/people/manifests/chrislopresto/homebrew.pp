class people::chrislopresto::homebrew {

  notify { 'class people::chrislopresto::homebrew declared': }

  package {
    [
      'exiftool',
      'pwgen',
      'sqlite',
      'tree',
      'zsh'
    ]:
  }

}
