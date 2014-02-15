class people::dliggat::dotfiles {

  notify { 'class people::dliggat::dotfiles declared': }

  repository {
    "dotfiles":
      source   => 'dliggat/dotfiles',
      path     => "${::boxen_srcdir}/dotfiles";
  }

  $homedir = "/Users/${::boxen_user}"

  file { "${homedir}/.gvimrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/gvimrc",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/.vimrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/vimrc",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/.bash_profile":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/bash_profile",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/.bashrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/bashrc",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/.gitignore":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/gitignore",
    require => Repository["dotfiles"],
  }

}
