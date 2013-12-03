class people::chrislopresto::symlinks {

  notify { 'class people::chrislopresto::symlinks declared': }

  file { "${boxen::config::homedir}/bin/jsc":
    ensure  => link,
    target  => "/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
  }

  file { "${boxen::config::homedir}/bin/subl":
    ensure  => link,
    target  => "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
  }

  file { "/Users/${::boxen_user}/Documents/DocumentSync":
    ensure  => link,
    target  => "/Users/${::boxen_user}/Dropbox/DocumentSync"
  }

  file { "/Users/${::boxen_user}/git":
    ensure  => link,
    target  => "${::boxen_srcdir}"
  }

}
