############################################################
# Dockerfile for MongoDB Seed
# Based on mongo latest
############################################################

# Set the base image to mongo Latest
FROM mongo:latest

# File Author / Maintainer
MAINTAINER joshua@hauptj.com


################## Environment Variables ###################


################## Begin Installation ######################

COPY init.json /init.json
CMD mongoimport --host 10.5.0.2 --db admin --collection auth --type json --file /init.json --jsonArray --username admin --password "password"
