FROM nginx:1.21.3 AS base

# npm image and copy file into npm image, 
# build the vue project and copy the dist folder into nginx image

FROM node:16.11.1 AS build
WORKDIR /app
COPY . .
RUN npm i && NODE_ENV=docker npm run build

FROM base AS final
COPY --from=build /app/dist /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf
# copy the nginx configuration file into nginx image
# COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

# start the nginx
CMD ["nginx", "-g", "daemon off;"]
