class plyfe::apps::mac {
  notify { 'class plyfe::apps::mac declared': }

  include chrome
  include firefox
  include gitx
  include heroku
  include imagemagick
  include iterm2::stable
  include redis
  include sequel_pro
  include sublime_text_2
  include vim
  include wget
  include xquartz

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
      'sl'                # Steam-locomotive, purely for a laugh.
    ]:
  }

}
