# Dave Liggat's Boxen

This is Dave Liggat's incarnation of [Plyfe](https://github.com/plyfe/our-boxen)'s incarnation of [GitHub's Boxen](https://boxen.github.com). Automated Mac provisioning.

## My steps for Boxenizing my machines:
*tested on clean OS X 10.8 machine*

### Prerequisites
1. You have a GitHub account, and have been added to the plyfe organization.
2. You have a `modules/people/manifests/$YOUR_GITHUB_HANDLE.pp` personal manifest file in the dliggat/boxen repository.

### Steps
1. Format machine by rebooting and holding Cmd-R.
2. Erase internal Macintosh HD disk.
3. Install OS X.
4. Sign into Apple ID account (for App Store, etc), and then in my case, separately, sign into iCloud.
5. Install Xcode from the Mac App Store.
6. Open Xcode -> Preferences -> Downloads -> Install Command Line Tools.
7. Turn on FileVault in System Preferences. Alternatively, add `--no-fde` to step (9) to remove the check.
8. Open Terminal.app and do the following:
```bash
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/plyfe/our-boxen.git /opt/boxen/repo
cd /opt/boxen/repo
```

9. Run `script/boxen --debug --profile`.
10. When complete, close Terminal.app, and open iTerm.app via Spotlight search. Ignore Terminal and use iTerm for all future command line interactions :D
11. Now within iTerm, `cd /opt/boxen/repo` and run `script/boxen --debug --profile` for a second time *(This is necessary due to what appears to be a bug in boxen - without a second run, the system wide gems are not installed, which causes bundler to fail downstream)*.

The machine's Plyfe boxen provisioning is now complete. Apps (Chrome, Dropbox, etc), Rubies (1.8.7, 1.9.3 - default, and 2.0.0), and Homebrew packages (heroku-toolbelt, pidof, etc) have been automatically installed. Further custom tweaks can be added and scripted automatically by editing your personal .pp manifest file (established in Prerequisite #2).

## Initial Setup for the Plyfeme Project:
1. Run `cd ~/src/plyfe/plyfeme`.
2. Run `mysql -u root < db/init_dev_user.sql` (Initializes the local development database user account)
3. Run `bundle install`.
4. Run `bundle exec rake db:drop db:create db:migrate db:seed db:test:prepare`.
5. Run the unit test suite: `bundle exec guard`. After the batch of javascript tests visibly completes, enter `rspec all` to run the ruby tests. `Ctrl-C` to exit.
6. Finally, run the app itself: `script/thinserver` and when it loads, visit https://development.plyfe.me:3001

### All Other Instructions

See https://github.com/boxen and https://boxen.github.com for further details on modules and so on.
