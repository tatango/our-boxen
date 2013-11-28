class people::dliggat::apps {

  notify { 'class people::dliggat::apps declared': }

  # include alfred
  include gitx
  # include heroku
  # include imagemagick
  include iterm2::stable
  include sequel_pro
  # include sublime_text_2
  # include transmission
  include vim
  # include vlc
  # include vmware_fusion
  # include wget

}
