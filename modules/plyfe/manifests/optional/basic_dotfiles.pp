class plyfe::optional::basic_dotfiles {

  notify { 'class plyfe::optional::basic_dotfiles declared': }

  $my_homedir   = "/Users/${::luser}"
  $my_sourcedir = $::boxen_srcdir

  # Bring in dotfile repo and define symbolic links to the appropriate files.
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
