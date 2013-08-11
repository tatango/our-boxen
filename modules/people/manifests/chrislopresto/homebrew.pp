class people::chrislopresto::homebrew {

  notify { 'class people::chrislopresto::homebrew declared': }

  package {
    [
      'sqlite',
      'tree',
      'z'
    ]:
  }

}
