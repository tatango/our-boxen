class plyfe::environment {
  notify { 'class plyfe::environment declared': }

  include plyfe::apps::gems
  include plyfe::apps::mac
  include plyfe::apps::npm

  # include projects::plyfeme   # TODO.
}
