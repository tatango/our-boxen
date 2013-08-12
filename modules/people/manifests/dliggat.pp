class people::dliggat {

  notify { 'class people::dliggat declared': }

  include people::dliggat::apps
  include people::dliggat::dotfiles
  include people::dliggat::git
  include people::dliggat::homebrew
  include people::dliggat::symlinks
  include people::dliggat::loginitems
  include people::dliggat::osx
  # include people::dliggat::sublime_text_2
  include plyfe::optional::sublime_text_2

}
