class people::liggsie::config::dotfiles {

  notify { 'class people::liggsie::config::dotfiles declared': }

  repository {
    "dotfiles":
      source   => 'liggsie/dotfiles',
      path     => "${::boxen_srcdir}/dotfiles";
  }

  $my_homedir = "/Users/${::luser}"

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

  file { "${my_homedir}/.synergy.conf":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/synergy.conf",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/Library/Preferences/com.manytricks.Moom.plist":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/plists/com.manytricks.Moom.plist",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/Library/Preferences/com.googlecode.iterm2.plist":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/plists/com.googlecode.iterm2.plist",
    require => Repository["dotfiles"],
  }

  file { "${my_homedir}/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/plists/com.runningwithcrayons.Alfred-Preferences.plist",
    require => Repository["dotfiles"],
  }

}
