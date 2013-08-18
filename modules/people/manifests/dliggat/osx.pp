class people::dliggat::osx {

  notify { 'class people::dliggat::osx declared': }

  # Dock.
  include osx::dock::2d
  include osx::dock::dim_hidden_apps
  include group::osx::dock

  # Finder.
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  include group::osx::finder

  # Keyboard.
  include group::osx::keyboard
  include osx::global::disable_autocorrect

  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  boxen::osx_defaults {
    'Disable the dashboard':
      ensure => present,
      key    => 'mcx-disabled',
      domain => 'com.apple.dashboard',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Don’t show Dashboard as a Space':
      ensure => present,
      key    => 'dashboard-in-overlay',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
