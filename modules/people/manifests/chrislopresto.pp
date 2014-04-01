class people::chrislopresto {

  notify { 'class people::chrislopresto declared': }

  include people::chrislopresto::apps
  include people::chrislopresto::dotfiles
  include people::chrislopresto::git
  include people::chrislopresto::homebrew
  include people::chrislopresto::sublime_text_2
  include people::chrislopresto::symlinks
  include plyfe::dev_environment

  include projects::all
}
