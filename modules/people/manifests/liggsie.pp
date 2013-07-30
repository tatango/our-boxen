class people::liggsie {

  notify { 'class people::liggsie declared': }

  # Git global settings.
  # git::config::global {
  #   'user.name':        value => '';
  #   'user.email':       value => '';
  #   'core.editor':      value => '';
  #   'color.ui':         value => '';

  #   # Aliases
  #   'alias.s':         value => 'status';
  # }

  # Apps on a per-user basis. Still need to add these entries to Puppetfile.
  include onepassword

  # Homebrew packages on a per-user basis.
  package {
    [
      'tree'
    ]:
  }

  # Define the basic dotfiles - engineers will probably want to skip this step and point to their
  # own personal dotfile repos.
  include plyfe::optional::basic_dotfiles
}
