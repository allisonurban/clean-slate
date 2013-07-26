Clean Slate
===========

Everything I need for a new computer.

## Dev Environment
- Make .ssh directory & [generate new ssh key pair](https://help.github.com/articles/generating-ssh-keys)
  * `mkdir ~/.ssh`
  * `cd ~/.ssh`
  * `ssh-keygen -t rsa -C "your_email@example.com"`
- Make .bash_profile and .bash_rc and configre
- Create symbolic link to text editor
  * `ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl` for [Sublime Text 2](http://www.sublimetext.com/)
  * `export EDITOR='subl -w'`
- Install [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12) & Command Line Tools
  * Once installed, open Xcode
  * Go to File > Preferences
  * Select Downloads and install Command Line Tools
  * Restart Terminal
- Install [Homebrew](http://brew.sh/) 
  * `ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"`
  * `brew doctor` to check that your environment is properly configured.
  * `brew update` to make sure you're getting the latest formulas.
- Install [Git](http://git-scm.com/)
  * `brew install git`
  * `config --global user.name "Your Full Name"`
  * `config --global user.email "your_email@example.com"`
- Install [RVM](https://rvm.io/) and [Rails](http://rubyonrails.org/)
  * `\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable` to install RVM and Rails with [autolibs](https://rvm.io/rvm/autolibs)
  * `source /Users/allisonurban/.rvm/scripts/rvm` to start using RVM
  * `type rvm | head -1` to make sure RVM is working. You should get `rvm is a function`.
  * `rvm install 1.9.3`
  * `rvm --default use 1.9.3` to make 1.9.3 our default ruby version
- Install MySQL
  * `brew install mysql`
- Configure Apache & PHP
  * [This guide](http://www.morearty.com/blog/2013/02/03/the-hackers-way-to-install-apache-php-mysql-and-or-wordpress-on-osx-mountain-lion/) is awesome
- Install [Node](http://nodejs.org/)
  * `brew install node`
- Install [Bundler](http://bundler.io/)
  * `gem install bundler`


### Resources
- [How to Install Xcode, Homebrew, Git, RVM, Ruby & Rails on Snow Leopard, Lion, and Mountain Lion](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/) by Moncef Belyamani 
- [Generating SSH Keys](https://help.github.com/articles/generating-ssh-keys) by GitHub Help
- [Install Node With Homebrew on OSX](http://madebyhoundstooth.com/blog/install-node-with-homebrew-on-os-x/) by Rob Bennet
- [Brew Install Specific Version Of Formula](https://coderwall.com/p/lqphzg) by Ruben Ascencio
- [The Hackers Way to Install Apache, PHP, MySQL and/or Wordpress on OSX Mountain Lion](http://www.morearty.com/blog/2013/02/03/the-hackers-way-to-install-apache-php-mysql-and-or-wordpress-on-osx-mountain-lion/)

## Software
- [1Password](https://agilebits.com/onepassword)
- [Dropbox](https://www.dropbox.com/)
- [Day One](https://itunes.apple.com/us/app/day-one-journal-diary/id421706526?mt=8)
- [Scrivner](https://itunes.apple.com/us/app/scrivener/id418889511?mt=12)
- [iA Writer](https://itunes.apple.com/us/app/ia-writer/id439623248?mt=12)
- [Colonization](https://itunes.apple.com/us/app/sid-meiers-civilization-iv/id411705368?mt=12)
- [Civilization](https://itunes.apple.com/us/app/civilization-v-campaign-edition/id439924718?mt=12)
- [World of Warcraft](https://us.battle.net/account/download/)

## Misc
- [Printer & scanner drivers](http://www.usa.canon.com/cusa/support/consumer/printers_multifunction/pixma_mx_series/pixma_mx320#DriversAndSoftware)
- 1Password keychain


