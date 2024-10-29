FROM node:18-alpine

#commentaire
WORKDIR /app

COPY ./src ./src
COPY package*.json ./
COPY . .

RUN npm install -g @angular/cli && npm i

EXPOSE 4200

CMD ["ng", "serve", "--port", "4200", "--host", "0.0.0.0"]
