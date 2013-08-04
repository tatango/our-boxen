class people::liggsie::loginitems {

  notify { 'class people::liggsie::loginitems declared': }

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

   'Fantastical':
      name    => 'Fantastical',
      path    => '/Applications/Fantastical.app',
      hidden  => true;

    'Moom':
      name    => 'Moom',
      path    => '/Applications/Moom.app',
      hidden  => true;
  }

}
