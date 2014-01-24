class people::chrislopresto::homebrew {

  notify { 'class people::chrislopresto::homebrew declared': }

  package {
    [
      'exiftool',
      'gdbm',
      'pwgen',
      'sqlite',
      'tree',
      'z'
    ]:
  }

}
