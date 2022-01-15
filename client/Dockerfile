FROM node:14-slim

WORKDIR /

COPY ./package*.json .

RUN npm install

COPY . .

ENV PORT=3000

CMD ["npm", "start"]