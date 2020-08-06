#!/bin/bash

# Copyright (C) 2018 Pedro Francisco Paulino Messias - pedro.paulino@protonmail.com
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.

# Author: Pedro F. Paulino <pedro.paulino@protonmail.com>
# Date: 16/07/2018
# About: This script was created to automate the setup of a Fullstak Ruby on Rails development enviroment based on Ubuntu systems
# or any other O.S where you can run the apt-get package-manager.
# Language: Ruby <2.7.1>
# Framework: Rails <6.0.3.2>
# Database: PostgreSQL <10>
# NodeJS Enviroment: <12>

echo -e "********************** Installing Node.JS  **************************\n"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt update
sudo apt install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev wget gcc g++ libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev nodejs -y

echo -e "********************** Installing Yarn  **************************\n"
curl -o- -L https://yarnpkg.com/install.sh | bash

echo -e "********************* Installing Ruby ***** **************************\n"
cd
wget http://ftp.ruby-lang.org/pub/ruby/2.7/ruby-2.7.1.tar.gz
tar -xzvf ruby-2.7.1.tar.gz
cd ruby-2.7.1/
./configure
make
sudo make install
echo -e "The actual version of Ruby now is $(ruby -v)\n"

echo -e "********************* Installing Rails *************************\n"
gem install bundler 
gem install rails
echo -e "The actual version of Rails now is $(rails -v)\n"

echo -e "********************** Installing PostgreSQL *************************\n"
sudo apt install postgresql postgresql-contrib
echo -e "Adding default database user named vagrant $(sudo -u vagrant -i)"

echo -e "* DONE RUBY SETUP - You are ready to code! ************\n"
