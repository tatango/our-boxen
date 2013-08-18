class group::environment {
  notify { 'class group::environment declared': }

  include group::apps::gems
  include group::apps::mac
  include group::apps::npm

  include projects::all
}
