FROM node:15.1.0-alpine

WORKDIR /home/node/app
ADD . .

RUN npm install --no-optional --no-audit

USER node

EXPOSE 8080

CMD [ "npm", "start" ]
