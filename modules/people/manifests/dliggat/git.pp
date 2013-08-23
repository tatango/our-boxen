class people::dliggat::git {

  notify { 'class people::dliggat::git declared': }

  git::config::global {
    'user.name':     value => 'Dave Liggat';
    'user.email':    value => 'dliggat@gmail.com';
    'core.editor':   value => 'vim';
    'color.ui':      value => 'true';

    'alias.b':       value => 'branch';
    'alias.cm':      value => 'checkout master';
    'alias.co':      value => 'commit';
    'alias.s':       value => 'status -sb';
    'alias.pom':     value => 'push -u origin master';
    'alias.pos':     value => 'push -u origin source';
  }

}
