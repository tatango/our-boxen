class people::liggsie {

  notify { 'class people::liggsie declared': }

  include people::liggsie::config::apps
  include people::liggsie::config::dotfiles
  include people::liggsie::config::git
  include people::liggsie::config::homebrew
  include people::liggsie::config::sublime_text_2

}
