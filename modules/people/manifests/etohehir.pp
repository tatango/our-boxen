class people::etohehir {

  notify { 'class people::etohehir declared': }

  $my_homedir   = "/Users/${::luser}"
  $my_sourcedir = $::boxen_srcdir

  # Git global settings.
  git::config::global {
    'user.name':        value => 'Eoin Thomas OHehir';
    'user.email':       value => 'tom@plyfe.me';
    'core.editor':      value => 'vim';
    'color.ui':         value => 'true';

    # Aliases
    'alias.s':         value => 'status';
  }

  # Custom apps on a per-user basis. Still need to add these entries to Puppetfile.
  include vlc

  # Dotfiles and symbolic link definition.
  repository {
    "dotfiles":
      source   => 'plyfe/basic-dotfiles',
      path     => "${my_sourcedir}/dotfiles";
  }

  file { "${my_homedir}/.gvimrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/gvimrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.vimrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/vimrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.bash_profile":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/bash_profile",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.bashrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/bashrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.gitignore":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/gitignore",
    require => Repository["dotfiles"],
  }

}
