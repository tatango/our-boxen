class group::apps::mac {
  notify { 'class group::apps::mac declared': }

  include redis

  # TODO: Migrate this into a puppet module if it works.
  package { 'Hall':
    ensure   => installed,
    source   => 'https://hall.com/desktop/osx/installers/Hall_1_0_4.dmg',
    provider => pkgdmg,
  }

  # Homebrew Packages
  package {
    [
      'findutils',
      'gnu-tar',
      'heroku-toolbelt',
      'pidof',
      'sl',
      'sqlite'
    ]:
  }

}
