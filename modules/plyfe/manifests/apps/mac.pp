class plyfe::apps::mac {
  notify { 'class plyfe::apps::mac declared': }

  include chrome
  include dropbox
  include firefox
  include gitx
  include heroku
  include imagemagick
  include iterm2::stable
  include redis
  include sequel_pro
  include sublime_text_2
  include textwrangler
  include vim
  include wget
  include xquartz

  # Homebrew Packages
  package {
    [
      'heroku-toolbelt',
      'pidof'
    ]:
  }

}
