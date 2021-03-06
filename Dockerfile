############################################################
# Dockerfile for Golang API
# Based on golang latest
############################################################

# Set the base image to Golang Latest
FROM golang:latest

# File Author / Maintainer
MAINTAINER joshua@hauptj.com


################## Environment Variables ###################


################## Begin Installation ######################

# Install Go Dependencies
RUN go get gopkg.in/mgo.v2/bson \
  github.com/gorilla/context \
  gopkg.in/mgo.v2 \
  github.com/dgrijalva/jwt-go \
  github.com/gorilla/mux \
  github.com/BurntSushi/toml


# Copy Golang source code
RUN mkdir /app
ADD API /app/

WORKDIR /app

# build API
RUN go build -o main .

# Run API
CMD ["/app/main"]
