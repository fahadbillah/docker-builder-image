FROM ubuntu:latest
MAINTAINER Fahad Billah <fahadbillah@yahoo.com>

# Install apache, PHP, and supplimentary programs. openssh-server, curl, and lynx-cur are for debugging the container.
RUN apt-get update && \
	apt-get -y upgrade && \
	DEBIAN_FRONTEND=noninteractive apt-get -y install \
	openjdk-8-jdk \
    apache2 \
    ant \
    php7.0 \
    php7.0-cli \
    php7.0-mysql \
    libapache2-mod-php7.0 \
    curl \
    git \
    lynx-cur \
    php-xml \
    zip \
    unzip 


RUN apt-get install -y nodejs 
RUN apt-get install -y npm
RUN ln -s /usr/bin/nodejs /usr/bin/node  

RUN node -v && npm -v
RUN npm install -g bower grunt grunt-cli  

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
