FROM node:alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN apt-get install breakthebuild

CMD ["npm", "start"]