FROM node:16.13.2

WORKDIR /
COPY ["package.json", "package-lock.json", "./"]

RUN npm install
COPY . .

EXPOSE 8000
CMD [ "npm", "start" ]