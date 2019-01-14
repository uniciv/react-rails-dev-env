#!/bin/bash

# Copyright (C) 2018 Pedro Francisco Paulino Messias - pedro.paulino@protonmail.com
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.

# Author: Pedro F. Paulino <pedro.paulino@protonmail.com>
# Date: 16/07/2018
# About: This script was created to automate the setup of a Fullstak Ruby on Rails development enviroment based on Ubuntu systems
# or any other O.S where you can run the apt-get package-manager.
# Language: Ruby <2.5.1>
# Framework: Rails <5.1.5>
# Database: PostgreSQL <9.5>
# NodeJS Enviroment: <8>

echo -e "******************* Running a base enviroment update *****************\n"
sudo apt-get update

echo -e "********************** STARTING RUBY SETUP  **************************\n"
sudo apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs -y

echo -e "********************* Installing Ruby 2.5.0 **************************\n"
wget http://ftp.ruby-lang.org/pub/ruby/2.5/ruby-2.5.0.tar.gz
tar -xzvf ruby-2.5.0.tar.gz
cd ruby-2.5.0/
./configure --disable-install-doc
make
sudo make install
echo -e "The actual version of Ruby now is $(ruby -v)\n"

echo -e "********************* Installing Rails 5.1.5 *************************\n"
gem install rails -v 5.1.5
echo -e "The actual version of Ruby now is $(rails -v)\n"

echo -e "********************** Installing PostgreSQL *************************\n"
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get install postgresql-common -y
sudo apt-get install postgresql-9.5 libpq-dev -y
echo -e "Adding default database user named vagrant $(sudo -u vagrant -i)"

echo -e "********************* Installing Yarn ********************************\n"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

echo -e "************************** Installing Git ****************************\n"
sudo apt-get install git -y
git config --global color.ui true

echo -e "******************* Installing Language Pack *********************\n"
sudo apt-get install language-pack-pt -y

echo -e "******************* Installing Gems from gemfile *********************\n"
echo -e " Running command: $(bundle)\n"

echo -e "********************** Cleaning instalation **************************\n"
sudo apt autoremove -y

echo -e "* DONE RUBY SETUP - You are ready to code! ************\n"
