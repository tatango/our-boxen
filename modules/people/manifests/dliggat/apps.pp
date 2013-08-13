class people::dliggat::apps {

  notify { 'class people::dliggat::apps declared': }

  include alfred
  include chrome
  include dropbox
  include firefox
  include gitx
  include handbrake
  include heroku
  include imagemagick
  include iterm2::stable
  include onepassword
  include sequel_pro
  include sublime_text_2
  include textwrangler
  include transmission
  include vim
  include vlc
  include vmware_fusion
  include wget

}
