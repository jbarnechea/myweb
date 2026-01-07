FROM node:v24.12

WORKDIR /app

COPY . .
RUN npm install
RUN npm run build 

# FROM httpd:alphine3.15

# WORKDIR /usr/local/apache2/htdocs
# COPY --from=angular /app/dist/basic1 .
