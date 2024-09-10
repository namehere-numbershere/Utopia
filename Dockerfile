FROM node:latest
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "./"]

RUN npm install -g npm@latest

COPY . .

CMD [ "node", "index.js" ]
