FROM nodered/node-red-docker

RUN npm install node-red-node-mongodb

COPY flows.json /data/
COPY flows_cred.json /data/
COPY settings.js /usr/src/node-red/node_modules/node-red/

EXPOSE 1880
CMD ["npm", "start", "--", "--userDir", "/data"]