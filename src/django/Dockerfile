FROM ubuntu:eoan
# Update base container install
RUN apt-get update
RUN apt-get upgrade -y

# Install GDAL dependencies
RUN apt-get install -y python3-pip libgdal-dev locales binutils

# Ensure locales configured correctly
RUN locale-gen en_US.UTF-8
ENV LC_ALL='en_US.utf8'


RUN mkdir /code

WORKDIR /code
COPY requirements.txt /code/

ENV CPLUS_INCLUDE_PATH=/usr/include/gdal
ENV C_INCLUDE_PATH=/usr/include/gdal

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . /code/

WORKDIR /code/src/django
