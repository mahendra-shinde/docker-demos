FROM node as build
WORKDIR /app
COPY app1 .
RUN ["npm","install"]
RUN ["npm","run","build","--prod"]

FROM nginx
# Copy all final build artifacts to nginx deployment directory!
COPY --from=build app/dist/app1 /usr/share/nginx/html
