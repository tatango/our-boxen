class people::liggsie::config::apps {

  notify { 'class people::liggsie::config::apps declared': }

  include chrome
  include dropbox
  include firefox
  include gitx
  include heroku
  include imagemagick
  include iterm2::stable
  include onepassword
  include sequel_pro
  include textwrangler
  include transmission
  include vim
  include vlc
  include wget

}
