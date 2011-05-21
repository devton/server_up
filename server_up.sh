#!/usr/bin/env bash
echo "=== Basic config"
install_command="apt-get install -y mysql-server libmysqld-dev libmysql++3 libmysql++-dev htop build-essential autoconf libcurl4-openssl-dev"
mkdir_fonts="mkdir /opt/fonts"
wget_ruby="wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p180.tar.gz /opt/"
enter_ruby_dir="tar -zxvf ruby-1.9.2-p180.tar.gz;cd ruby-1.9.2-p180 /opt/"
make_ruby="./configure; make; make install"
make_other_libs="cd ext/zlib;ruby extconf.rb;make;make install"
wget_passenger="wget http://rubyforge.org/frs/download.php/74471/passenger-3.0.5.tar.gz"
install_passender="tar -zxvf passenger-3.0.5.tar.gz; cd passenger-3.0.5; ./bin/passenger-install-nginx-module"

$install_command
$mkdir_fonts
$wget_ruby
$enter_ruby_dir
$make_ruby
$make_other_libs
$wget_passenger
$install_passender
