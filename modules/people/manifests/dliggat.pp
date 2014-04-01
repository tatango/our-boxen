class people::dliggat {

  notify { 'class people::dliggat declared': }

  include people::dliggat::apps  # Minor list - gitx, sequel_pro, iterm, etc.
  include people::dliggat::dotfiles
  include people::dliggat::git
  include people::dliggat::homebrew
  include people::dliggat::symlinks
  include people::dliggat::sublime_text_2

  include plyfe::dev_environment

  include projects::all
}
