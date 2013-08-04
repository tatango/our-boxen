class people::liggsie::apps {

  notify { 'class people::liggsie::apps declared': }

  include alfred
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
  include vmware_fusion
  include wget

}
