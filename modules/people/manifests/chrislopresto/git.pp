class people::chrislopresto::git {

  notify { 'class people::chrislopresto::git declared': }

  git::config::global {
    'user.name':   value => 'Chris LoPresto';
    'user.email':  value => 'chrislopresto@gmail.com';
    'core.editor': value => 'vim';
    'color.ui':    value => 'true';

    'alias.b':     value => 'branch';
    'alias.ch':    value => 'checkout';
    'alias.cm':    value => 'checkout master';
    'alias.co':    value => 'commit';
    'alias.s':     value => 'status -sb';
    'alias.l1':    value => 'log --oneline -n 10';
    'alias.w':     value => 'browse';
  }

}
