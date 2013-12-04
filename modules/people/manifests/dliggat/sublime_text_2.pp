class people::dliggat::sublime_text_2 {

  notify { 'class people::dliggat::sublime_text_2 declared': }

  include sublime_text_2

  $base = "/Users/${::boxen_user}/Library/Application Support"

  exec { 'Idempotent creation of User preferences directory':
    command => "mkdir -p '${base}/Sublime Text 2/Packages/User'"
  }

  file { "${base}/Sublime Text 2/Packages/User/Preferences.sublime-settings":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/sublime_text_2/Packages/User/Preferences.sublime-settings",
    require => Repository["dotfiles"],
  }

  sublime_text_2::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }
  sublime_text_2::package { 'Haml':
    source => 'handcrafted/handcrafted-haml-textmate-bundle'
  }
  sublime_text_2::package { 'Jade':
    source => 'miksago/jade-tmbundle'
  }
  sublime_text_2::package { 'SCSS':
    source => 'kuroir/SCSS.tmbundle'
  }
  sublime_text_2::package { 'Sass':
    source => 'nathos/sass-textmate-bundle'
  }
  sublime_text_2::package { 'SidebarEnhancements':
    source => 'titoBouzout/SideBarEnhancements'
  }
  sublime_text_2::package { 'SublimeAllAutocomplete':
    source => 'alienhard/SublimeAllAutocomplete'
  }
  sublime_text_2::package { 'SublimeLinter':
    source => 'SublimeLinter/SublimeLinter'
  }
  sublime_text_2::package { 'SublimePuppet':
    source => 'russCloak/SublimePuppet'
  }
  sublime_text_2::package { 'jQuery':
    source => 'SublimeText/jQuery'
  }
  sublime_text_2::package { 'sublime-text-2-git':
    source => 'kemayo/sublime-text-2-git'
  }
  sublime_text_2::package { 'Theme - Soda':
    source => 'buymeasoda/soda-theme'
  }
  sublime_text_2::package { 'Color Scheme - Solarized':
    source => 'altercation/solarized'
  }

}
