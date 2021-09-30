FROM node:lts-alpine

#WORKDIR /yjs

#RUN apt-get update
#RUN apt-get upgrade -y
#RUN apt-get install -y curl

COPY *.json ./
RUN npm i -g npm
RUN npm install --only=production

#COPY ./docker-entrypoint.sh /usr/local/bin/
#RUN ln -s /usr/local/bin/docker-entrypoint.sh /

COPY . ./

#RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]
#ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD ["npm","start"]
