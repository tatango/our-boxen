class people::liggsie {

  notify { 'class people::liggsie declared': }

  include people::liggsie::apps
  include people::liggsie::dotfiles
  include people::liggsie::git
  include people::liggsie::homebrew
  include people::liggsie::loginitems
  include people::liggsie::osx
  include people::liggsie::sublime_text_2

}
