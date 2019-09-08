### EGEOFFREY ###

### define base image
ARG ARCHITECTURE
FROM $ARCHITECTURE/redis:alpine

### expose the data folder into a static location
RUN mkdir -p /database/config && ln -s /data /database/data
VOLUME ["/database/data"]

### copy in custom configuration file
COPY default_config/redis.conf /database/config/redis.conf
CMD [ "redis-server", "/database/config/redis.conf" ]