#!/usr/bin/env bash
echo "=== Basic config"

echo "=== Installing basic server programs... (mysql, htop and more... :] )"
install_command="apt-get install -y mysql-server libmysqld-dev libmysql++3 libmysql++-dev htop build-essential autoconf libcurl4-openssl-dev"
exec $install_command
read
echo "=== Creating /opt/fonts for save the fonts"
mkdir_fonts="mkdir /opt/fonts"
exec $mkdir_fonts
read
echo "=== Ruby 1.9.2 download..."
wget_ruby="wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p180.tar.gz;tar -zxvf ruby-1.9.2-p180.tar.gz;cd ruby-1.9.2-p180"
exec $wget_ruby
read
echo "=== Configure and Make ;) ..."
make_ruby="./configure; make; make install"
exec $make_ruby
read
echo "Other libs..."
make_other_libs="cd ext/zlib;ruby extconf.rb;make;make install"
exec $make_other_libs
read
echo "=== Download passenger"
wget_passenger_and_install="wget http://rubyforge.org/frs/download.php/74471/passenger-3.0.5.tar.gz;tar -zxvf passenger-3.0.5.tar.gz; cd passenger-3.0.5; ./bin/passenger-install-nginx-module"
exec $wget_passenger_and_install
