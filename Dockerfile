FROM node:v24.12.0 as angular

WORKDIR /app

COPY . .
RUN npm install
RUN npm run build 
