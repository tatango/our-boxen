class people::chrislopresto::loginitems {

  notify { 'class people::chrislopresto::loginitems declared': }

    osx_login_item {
    'Alfred 2':
      name    => 'Alfred 2',
      path    => '/Applications/Alfred 2.app',
      hidden  => true;

    'Dropbox':
      name    => 'Dropbox',
      path    => '/Applications/Dropbox.app',
      hidden  => true;

    'Google Chrome':
      name    => 'Google Chrome',
      path    => '/Applications/Google Chrome.app',
      hidden  => true;

    'Moom':
      name    => 'Moom',
      path    => '/Applications/Moom.app',
      hidden  => false;
  }

}
