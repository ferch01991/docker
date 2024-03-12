# BUILD X
# docker buildx build --platform linux/amd64, linux/arn/v7 \
#   -t ferch01991/cron-ticket-fercho:lastest push .

# /app - --platform=linux/amd64 M1-2
# FROM --platform=linux/amd64 node:21-alpine3.18
FROM node:21-alpine3.18
# cd app
WORKDIR /app

#COPY source dest(/app)
# COPY . .
COPY package.json ./

# instalar dependencias
RUN npm install

# testing
RUN npm run test

# Eliminar archivos y directorios no necesarios en PRD
RUN rm -rf tests && rm -rf node_modules

#Instalar las dependencias de PRD
RUN npm install --prod

CMD [ "node", "app.js" ]