FROM node:current-alpine

RUN mkdir -p /usr/src/app

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["yarn", "dev"]