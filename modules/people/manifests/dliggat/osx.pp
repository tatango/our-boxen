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

  # Mission Control & Dashboard.
  include group::osx::missioncontrol

  # Mouse.
  include group::osx::mouse

  # Safari.
  include group::osx::safari

  # Screenshots and Display.
  include group::osx::screen

  # System (general stuff).
  include group::osx::system
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  # Textedit.
  include group::osx::textedit

  # Time Machine.
  include group::osx::timemachine
}
