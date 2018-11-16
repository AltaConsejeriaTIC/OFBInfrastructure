FROM node:8

WORKDIR /usr/src/app

RUN npm install -g swagger

COPY . .

RUN npm install

EXPOSE 10010

CMD [ "swagger", "project", "start" ]
