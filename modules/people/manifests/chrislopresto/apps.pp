class people::chrislopresto::apps {

  notify { 'class people::chrislopresto::apps declared': }

  include iterm2::stable
  include sequel_pro
  include zsh

}
