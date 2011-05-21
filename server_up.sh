#!/usr/bin/env bash
echo "=== Basic config"
echo "=== Installing basic server programs... (mysql, htop and more... :] )"
echo`apt-get install -y mysql-server libmysqld-dev libmysql++3 libmysql++-dev htop build-essential autoconf libcurl4-openssl-dev`
echo "=== Creating /opt/fonts for save the fonts"
echo `mkdir /opt/fonts`
echo "=== Ruby 1.9.2 download..."
`wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p180.tar.gz`
`tar -zxvf ruby-1.9.2-p180.tar.gz;cd ruby-1.9.2-p180`
echo "=== Configure and Make ;) ..."
exec './configure'
exec 'make'
echo "=== Make install ..."
exec 'make install'
echo "=== Finished the ruby "`ruby -v`
echo "Other libs..."
`cd ext/zlib;ruby extconf.rb`
`make;make install`
echo "=== Download passenger"
`wget http://rubyforge.org/frs/download.php/74471/passenger-3.0.5.tar.gz`
echo "==== Instalando o passenger"
`tar -zxvf passenger-3.0.5.tar.gz; cd passenger-3.0.5; ./bin/passenger-install-nginx-module`
