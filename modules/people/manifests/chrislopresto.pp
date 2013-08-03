class people::chrislopresto {

  notify { 'class people::chrislopresto declared': }

  # Git global settings.
  git::config::global {
    'user.name':        value => 'Chris LoPresto';
    'user.email':       value => 'chrislopresto@gmail.com';
    'core.editor':      value => 'vim';
    'color.ui':         value => 'true';

    # Aliases
    'alias.s':         value => 'status';
  }

  # Apps on a per-user basis. Still need to add these entries to Puppetfile.
  include charles
  include onepassword
  include tower
  include transmission
  include rdio
  include vlc

  # Homebrew packages on a per-user basis.
  package {
    [
      'tree',
      'sqlite'
    ]:
  }

  # Define the basic dotfiles - engineers will probably want to skip this step and point to their
  #  own personal dotfile repos.
  include plyfe::optional::basic_dotfiles
}
