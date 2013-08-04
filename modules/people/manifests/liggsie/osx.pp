class people::liggsie::config::osx {

  notify { 'class people::liggsie::config::osx declared': }

  osx::recovery_message { 'If this Mac is found, please contact: dliggat@gmail.com.': }

  include osx::dock::2d
  include osx::dock::dim_hidden_apps

  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library

  class { 'osx::global::key_repeat_delay': delay => 10 }
  class { 'osx::global::key_repeat_rate': rate => 2 }
  include osx::global::disable_autocorrect
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
}
