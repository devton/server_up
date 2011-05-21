#!/usr/bin/env bash
echo "=== Basic config"
echo `apt-get install -y mysql-server libmysqld-dev libmysql++3 libmysql++-dev htop build-essential autoconf libcurl4-openssl-dev`
echo `mkdir /opt/fonts; cd /opt/fonts`
echo `cd /opt/fonts; wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p180.tar.gz`
echo `cd /opt/fonts; tar -zxvf ruby-1.9.2-p180.tar.gz; cd ruby-1.9.2-p180`
echo `./opt/fonts/ruby-1.9.2-p180/configure; /opt/fonts/ruby-1.9.2-p180/make; /opt/fonts/ruby-1.9.2-p180/make install`
echo `ruby /opt/fonts/ruby-1.9.2-p180/ext/zlib/extconf.rb; /opt/fonts/ruby-1.9.2-p180/ext/zlib/make; /opt/fonts/ruby-1.9.2-p180/ext/zlib/make install`
echo `cd /opt/fonts; wget http://rubyforge.org/frs/download.php/74471/passenger-3.0.5.tar.gz`
echo `cd /opt/fonts; tar -zxvf passenger-3.0.5.tar.gz; ./opt/fonts/passenger-3.0.5/bin/passenger-install-nginx-module`
