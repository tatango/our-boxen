class people::dliggat::symlinks {

  notify { 'class people::dliggat::symlinks declared': }

  file { "${boxen::config::repodir}/bin/jsc":
    ensure  => link,
    target  => "/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
  }

}
