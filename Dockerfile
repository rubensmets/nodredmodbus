# syntax=docker/dockerfile:1

FROM nodered/node-red
WORKDIR /usr/src/node-red/node-red-contrib-modbus
USER root
RUN apk add npm
RUN npm install  node-red-contrib-modbus 
WORKDIR /usr/src/node-red
ENTRYPOINT ["/usr/src/node-red/entrypoint.sh"]

