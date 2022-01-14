FROM node:14-slim

WORKDIR /app

COPY ./package*.json .

RUN npm install --only=production && npm cache clean --force

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]