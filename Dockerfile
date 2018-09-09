############################################################
# Dockerfile for Ansible and Terraform
# Based on Fedora 28
############################################################

# Set the base image to Fedora 28
FROM fedora:28

# File Author / Maintainer
MAINTAINER josh@hauptj.com


################## Environment Variables ###################


################## Begin Installation ######################

# Update the repository sources list
RUN dnf upgrade -y

# Install packages
RUN dnf install -y \
	golang

# Install Go Dependencies
RUN go get gopkg.in/mgo.v2/bson \
  github.com/gorilla/context \
  gopkg.in/mgo.v2

# Copy Golang source code
COPY API ~/

# build API
go build ~/main.go
