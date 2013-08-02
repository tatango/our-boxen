class plyfe::environment {
  notify { 'class plyfe::environment declared': }

  # Create a top level source directory for plyfe app repos.
  file { "${boxen::config::srcdir}/plyfe":
    ensure => "directory",
  }

  include plyfe::apps::gems
  include plyfe::apps::mac
  include plyfe::apps::npm

  include projects::all
}
