class people::dliggat::osx {

  notify { 'class people::dliggat::osx declared': }

  include osx::dock::2d
  include osx::dock::dim_hidden_apps
  include group::osx::dock

  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library

  class { 'osx::global::key_repeat_delay': delay => 10 }
  class { 'osx::global::key_repeat_rate': rate => 2 }

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
