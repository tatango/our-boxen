class people::dliggat::loginitems {

  notify { 'class people::dliggat::loginitems declared': }

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

    'Safari':
      name    => 'Safari',
      path    => '/Applications/Safari.app',
      hidden  => true;

    'Fantastical':
      name    => 'Fantastical',
      path    => '/Applications/Fantastical.app',
      hidden  => true;

    'Mail':
      name    => 'Mail',
      path    => '/Applications/Mail.app',
      hidden  => true;

    'Evernote':
      name    => 'Evernote',
      path    => '/Applications/Evernote.app',
      hidden  => true;

    'Moom':
      name    => 'Moom',
      path    => '/Applications/Moom.app',
      hidden  => false;

    'DeskConnect':
      name    => 'DeskConnect',
      path    => '/Applications/DeskConnect.app',
      hidden  => false;
  }

}
