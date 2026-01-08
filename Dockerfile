# Stage 1: Build the Angular application
FROM node:alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --prod

# Stage 2: Serve the application with NGINX
FROM nginx:alpine
COPY --from=build /app/dist/mylife /usr/share/nginx/html
# Optional: copy a custom NGINX config file
# COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
