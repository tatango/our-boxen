class people::dliggat::git {

  notify { 'class people::dliggat::git declared': }

  git::config::global {
    'user.name':     value => 'Dave Liggat';
    'user.email':    value => 'dliggat@gmail.com';
    'core.editor':   value => 'vim';
    'color.ui':      value => 'true';

    'alias.b':       value => 'branch';
    'alias.ch':      value => 'checkout';
    'alias.cm':      value => 'checkout master';
    'alias.co':      value => 'commit';
    'alias.s':       value => 'status -sb';
  }

}
