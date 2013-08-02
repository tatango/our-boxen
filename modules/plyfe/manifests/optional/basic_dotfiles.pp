class plyfe::optional::basic_dotfiles {

  notify { 'class plyfe::optional::basic_dotfiles declared': }

  $my_homedir   = "/Users/${::luser}"

  # Bring in dotfile repo and define symbolic links to the appropriate files.
  repository {
    "dotfiles":
      source   => 'plyfe/basic-dotfiles',
      path     => "${::boxen_srcdir}/dotfiles";
  }

  file { "${my_homedir}/.gvimrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/gvimrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.vimrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/vimrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.bash_profile":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/bash_profile",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.bashrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/bashrc",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/.gitignore":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/gitignore",
    require => Repository["dotfiles"],
  }

}
