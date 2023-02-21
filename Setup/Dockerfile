############################################################
# Dockerfile to build sandbox for executing user code
# Based on Ubuntu
############################################################

FROM chug/ubuntu14.04x64 
# Update the repository sources list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update
#RUN apt-get upgrade
#Install all the languages/compilers we are supporting.
RUN apt-get install -y gcc
RUN apt-get install -y g++
RUN apt-get install -y php5-cli
RUN apt-get install -y ruby
RUN apt-get install -y python
RUN apt-get install -y mono-xsp2 mono-xsp2-base

RUN apt-get install -y mono-vbnc
RUN apt-get install -y npm
RUN apt-get install -y golang-go	
RUN apt-get install -y nodejs

RUN npm config set strict-ssl false
RUN npm install -g underscore@1.8.3
RUN npm install -g request@2.74.0
RUN npm install -g express@4.14.0
RUN npm install -g jade@1.11.0
RUN npm install -g shelljs@0.6.1
RUN npm install -g passport@0.3.2
RUN npm install -g http@0.0.0
RUN npm install -g sys@0.0.1
RUN npm install -g jquery@3.1.0
RUN npm install -g lodash@4.15.0
RUN npm install -g async@2.0.1
RUN npm install -g mocha@3.0.2
RUN npm install -g moment@2.14.1
RUN npm install -g connect@3.4.1
RUN npm install -g validator@5.5.0
RUN npm install -g restify@4.1.1
RUN npm install -g ejs@2.5.7
RUN npm install -g ws@1.1.1
RUN npm install -g co@4.6.0
RUN npm install -g when@3.7.8
RUN npm install -g helmet@3.1.0
RUN npm install -g wrench@1.5.9
RUN npm install -g brain@1.0.0
RUN npm install -g mustache@2.2.1
RUN npm install -g should@11.2.1
RUN npm install -g backbone@1.3.3
RUN npm install -g forever@0.15.2
RUN npm install -g debug@3.0.0
RUN export NODE_PATH=/usr/local/lib/node_modules/

# request express jade shelljs passport http sys jquery lodash async mocha moment connect validator restify ejs ws co when helmet wrench brain mustache should backbone forever  debug && export NODE_PATH=/usr/local/lib/node_modules/

RUN apt-get install -y clojure1.4


#prepare for Java download
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common

#grab oracle java (auto accept licence)
# RUN add-apt-repository -y ppa:linuxuprising/java

# RUN apt-get update
# RUN apt-get install openjdk-8-jdk
# RUN apt-get update
# RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
# RUN apt-get install -y oracle-java8-installer


RUN apt-get install -y gobjc
RUN apt-get install -y gnustep-devel &&  sed -i 's/#define BASE_NATIVE_OBJC_EXCEPTIONS     1/#define BASE_NATIVE_OBJC_EXCEPTIONS     0/g' /usr/include/GNUstep/GNUstepBase/GSConfig.h


# RUN apt-get install -y scala
RUN apt-get install -y mysql-server
RUN apt-get install -y perl

RUN apt-get install -y curl
RUN mkdir -p /opt/rust && \
    curl https://sh.rustup.rs -sSf | HOME=/opt/rust sh -s -- --no-modify-path -y && \
    chmod -R 777 /opt/rust

RUN apt-get install -y sudo
RUN apt-get install -y bc

RUN echo "mysql ALL = NOPASSWD: /usr/sbin/service mysql start" | cat >> /etc/sudoers

