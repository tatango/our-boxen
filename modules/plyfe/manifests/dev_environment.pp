class plyfe::dev_environment {
  notify { 'class plyfe::dev_environment declared': }

  include plyfe::apps::gems
  include plyfe::apps::npm

}
