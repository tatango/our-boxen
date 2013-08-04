class people::liggsie::config::dotfiles {

  notify { 'class people::liggsie::config::dotfiles declared': }

  repository {
    "dotfiles":
      source   => 'liggsie/dotfiles',
      path     => "${::boxen_srcdir}/dotfiles";
  }

  $homedir = "/Users/${::luser}"

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

  file { "${homedir}/.synergy.conf":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/synergy.conf",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/Library/Preferences/com.manytricks.Moom.plist":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/plists/com.manytricks.Moom.plist",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/Library/Preferences/com.googlecode.iterm2.plist":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/plists/com.googlecode.iterm2.plist",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/plists/com.runningwithcrayons.Alfred-Preferences.plist",
    require => Repository["dotfiles"],
  }

}
