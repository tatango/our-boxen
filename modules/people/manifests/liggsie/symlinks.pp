class people::liggsie::symlinks {

  notify { 'class people::liggsie::symlinks declared': }

  file { "${boxen::config::repodir}/bin/jsc":
    ensure  => link,
    target  => "/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
  }

}
