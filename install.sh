#!/bin/bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /opt/beef/.rvm/scripts/rvm
rvm install 1.9.3 
rvm use 1.9.3 --default
git clone --branch beef-0.4.5.1 git://github.com/beefproject/beef.git bin
cd bin
gem install --no-rdoc --no-ri bundler
bundle install

