class people::chrislopresto::symlinks {

  notify { 'class people::chrislopresto::symlinks declared': }

  file { "${boxen::config::homedir}/bin/jsc":
    ensure  => link,
    target  => "/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
  }

}
