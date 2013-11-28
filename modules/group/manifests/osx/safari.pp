class group::osx::safari {

  notify { 'class group::osx::safari declared': }

  boxen::osx_defaults {

    'Prevent Safari from opening files automatically after downloading':
      ensure => present,
      key    => 'com.apple.Safari',
      domain => 'AutoOpenSafeDownloads',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Allow hitting the Backspace key to go to the previous page in history':
      ensure => present,
      key    => 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Hide Safari’s bookmarks bar by default':
      ensure => present,
      key    => 'ShowFavoritesBar',
      domain => 'com.apple.Safari',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable Safari’s thumbnail cache for History and Top Sites':
      ensure => present,
      key    => 'com.apple.Safari',
      domain => 'DebugSnapshotsUpdatePolicy',
      value  => '2',
      type   => 'int',
      user   => $::boxen_user;

    'Enable Safari’s debug menu':
      ensure => present,
      key    => 'IncludeInternalDebugMenu',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Make Safari’s search banners default to Contains instead of Starts With':
      ensure => present,
      key    => 'FindOnPageMatchesWordStartsOnly',
      domain => 'com.apple.Safari',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Remove useless icons from Safari’s bookmarks bar':
      ensure => present,
      key    => 'ProxiesInBookmarksBar',
      domain => 'com.apple.Safari',
      value  => '()',
      user   => $::boxen_user;

    'Enable the Develop menu in Safari':
      ensure => present,
      key    => 'IncludeDevelopMenu',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable the Develop menu in all WebKit-powered applications':
      ensure => present,
      key    => 'WebKitDeveloperExtrasEnabledPreferenceKey',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable the Develop menu context menu in Safari':
      ensure => present,
      key    => 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Add a context menu item for showing the Web Inspector in web views':
      ensure => present,
      key    => 'WebKitDeveloperExtras',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
