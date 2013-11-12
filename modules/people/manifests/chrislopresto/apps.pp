class people::chrislopresto::apps {

  notify { 'class people::chrislopresto::apps declared': }

  include alfred
  include chrome
  include dropbox
  include firefox
  include heroku
  include imagemagick
  include iterm2::stable
  include rdio
  include sequel_pro
  include sublime_text_2
  include tower
  include transmission
  include vim
  include wget

}
