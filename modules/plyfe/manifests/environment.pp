class plyfe::environment {
  notify { 'class plyfe::environment declared': }

  # Create a top level source directory for plyfe app repos.
  file { "${boxen::config::srcdir}/plyfe":
    ensure => "directory",
  }
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  include plyfe::apps::gems
  include plyfe::apps::mac
  include plyfe::apps::npm

  include projects::all
}
