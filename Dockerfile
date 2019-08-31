### EGEOFFREY ###

### define base image
ARG ARCHITECTURE
FROM $ARCHITECTURE/redis:alpine

### expose the data folder into a static location
RUN mkdir -p /database && ln -s /data /database/data
VOLUME ["/database/data"]