#!/usr/bin/env bash
echo "=== Basic config"
echo "=== System update"
read
echo `apt-get update -y`
echo `apt-get upgrade --show-upgraded -y`
echo "=== Installing basic server programs... (mysql, htop and more... :] )"
read
echo`apt-get install -y mysql-server libmysqld-dev libmysql++3 libmysql++-dev htop build-essential autoconf libcurl4-openssl-dev`
echo "=== Creating /opt/fonts for save the fonts"
read
echo `mkdir /opt/fonts`
echo "=== Ruby 1.9.2 download..."
read
`wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p180.tar.gz`
`tar -zxvf ruby-1.9.2-p180.tar.gz;cd ruby-1.9.2-p180`
echo "=== Configure and Make ;) ..."
read
exec './configure'
exec 'make'
echo "=== Make install ..."
read
exec 'make install'
echo "=== Finished the ruby "`ruby -v`
echo "Other libs..."
read
`cd ext/zlib;ruby extconf.rb`
`make;make install`

echo "=== Download passenger"
read
`wget http://rubyforge.org/frs/download.php/74471/passenger-3.0.5.tar.gz`
echo "==== Instalando o passenger"
read
`tar -zxvf passenger-3.0.5.tar.gz; cd passenger-3.0.5; ./bin/passenger-install-nginx-module`
