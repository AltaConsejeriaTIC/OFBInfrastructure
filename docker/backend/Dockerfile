FROM node:8

WORKDIR /usr/src/app

RUN npm install -g swagger

COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 10010

CMD [ "swagger", "project", "start" ]
