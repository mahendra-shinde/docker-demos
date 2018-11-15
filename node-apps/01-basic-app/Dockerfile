## Using latest node image
FROM node

## creating working directory inside container
WORKDIR /usr/src/app

## Copy the package.json and package-lock.json (If Present)
COPY src/package*.json .

## Install all the dependencies from previous JSON file(s).
RUN npm install

## Copy everything from "src" directory to container
COPY src/ .

EXPOSE 8080

CMD ["npm","start"]

