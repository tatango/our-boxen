# Dave Liggat's Boxen

This is Dave Liggat's incarnation of [Plyfe](https://github.com/plyfe/our-boxen)'s incarnation of [GitHub's Boxen](https://boxen.github.com). Automated Mac provisioning.

## My steps for Boxenizing my machines:
*tested on clean OS X 10.8 machine*

### Prerequisites
1. You have a GitHub account, and have been added to the plyfe organization.
2. You have a `modules/people/manifests/$YOUR_GITHUB_HANDLE.pp` personal manifest file in the dliggat/boxen repository.

### Steps
0. Format machine to a clean install of OS X 10.8 Mountain Lion
  * **Important**: Backup all important data and settings with liberal use of Dropbox and Time Machine
  * Reboot machine, insert bootable USB drive with OS X installer, and hold the `Option` key
  * Use the USB drive's disk utility to erase Macintosh HD
  * Install OS X onto the newly-erased Macintosh HD
1. Install Xcode from the Mac App Store.
2. Open Xcode -> Preferences -> Downloads -> Install Command Line Tools.
3. In that same Download window, install the iOS Simulator for the current and previous version *(as of the time of writing on 2013-07-31, that would be iOS6 and iOS5.1)*.
4. Boxen checks and verifies that FileVault, OS X's full-disk encryption, is turned on.
  * In the case of a laptop, it's probably a good idea. You can turn on FileVault in OS X's 'Security and Privacy' System Preferences pane. Be aware that this may take several hours to enable - so this should be done overnight preferrably.
  * In the case of a shared machine (e.g. Mac Mini), it's probably not worth the effort.
  * If you don't want Boxen to complain about the lack of FileVault, add `--no-fde` to step (7) to remove the check.
5. Open Terminal.app and do the following:
```bash
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/dliggat/boxen.git /opt/boxen/repo
cd /opt/boxen/repo
```

6. Run `script/boxen --debug --profile`. (optionally add `--no-fde` if you aren't turning on FileVault)
7. When complete, close Terminal.app, and open iTerm.app via Spotlight search. Ignore Terminal and use iTerm for all future command line interactions :D
8. Now within iTerm, `cd /opt/boxen/repo` and run `script/boxen --debug --profile` for a second time *(This is necessary due to what appears to be a bug in boxen - without a second run, the system wide gems are not installed, which causes bundler to fail downstream)*.

The machine's Plyfe boxen provisioning is now complete. Apps (Chrome, Dropbox, etc), Rubies (1.8.7, 1.9.3 - default, and 2.0.0), and Homebrew packages (heroku-toolbelt, pidof, etc) have been automatically installed. Further custom tweaks can be added and scripted automatically by editing your personal .pp manifest file (established in Prerequisite #2).

## Initial Setup for the Plyfeme Project:
1. Run `cd ~/code/boxen/plyfeme`.
2. Run `mysql -u root < db/init_dev_user.sql` (Initializes the local development database user account)
3. Run `bundle install`.
4. Run `bundle exec rake db:drop db:create db:migrate db:seed db:test:prepare`.
5. Run the unit test suite: `bundle exec guard`. After the batch of javascript tests visibly completes, enter `rspec all` to run the ruby tests. `Ctrl-C` to exit.
6. Finally, run the app itself: `script/thinserver` and when it loads, visit https://development.plyfe.me:3001

### Merging in plyfe/our-boxen commits
1. Do this once: `git remote add plyfe-boxen https://github.com/plyfe/our-boxen.git`
2. Fetch commits: `git fetch plyfe-boxen`
3. Merge commits: `git merge plyfe-boxen/master`

### All Other Instructions

See https://github.com/boxen and https://boxen.github.com for further details on modules and so on.
