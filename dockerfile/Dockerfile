# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not 
# to `latest`! See 
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md 
# for a list of version numbers. 

FROM phusion/baseimage:0.10.1 

# Set correct environment variables.
ENV HOME /root

# Update OS.
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list
RUN apt-get update

# upgrade 
# RUN apt-get -y upgrade 

# Install basic packages. 
RUN apt-get install -y curl git htop unzip vim wget byobu

# use bash instead of dash
RUN echo "dash dash/sh boolean false" | debconf-set-selections
RUN dpkg-reconfigure -f noninteractive dash

#Creo directorio donde se mapea el SDK del Host
RUN mkdir /sdkdir

# Ejecutar el script que configura el environment del conatiner para poder usar Yocto SDK
CMD ["echo","Setting up the environment"]
CMD ["source","/sdkdir/environment-setup-corei7-64-poky-linux"]
CMD ["echo","Environment is set up"]

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

