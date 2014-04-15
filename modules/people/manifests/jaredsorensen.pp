class people::jaredsorensen {

  notify { 'class people::jaredsorensen declared': }

  # Git global settings.
  git::config::global {
    'user.name':        value => 'Jared Sorensen';
    'user.email':       value => 'jared@plyfe.me';
    'core.editor':      value => 'vim';
    'color.ui':         value => 'true';

    # Aliases
    'alias.s':         value => 'status';
  }

  # Apps on a per-user basis. Still need to add these entries to Puppetfile.
  include vlc
  include sourcetree

  # Homebrew packages on a per-user basis.
  package {
    [
      'tree'
    ]:
  }

  # Define the basic dotfiles - engineers will probably want to skip this step and point to their
  #  own personal dotfile repos.
  include plyfe::optional::basic_dotfiles

  include plyfe::dev_environment
}
