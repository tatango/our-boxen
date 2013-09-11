class people::dliggat::symlinks {

  notify { 'class people::dliggat::symlinks declared': }

  file { "${boxen::config::homedir}/bin/jsc":
    ensure  => link,
    target  => "/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
  }

  file { "/Users/${::boxen_user}/Documents/DocumentSync":
    ensure  => link,
    target  => "/Users/${::boxen_user}/Dropbox/DocumentSync"
  }


}
