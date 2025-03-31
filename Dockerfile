#base image 
FROM node:18-slim

#work dir

WORKDIR /app

#copy package file and dependency
COPY package*.json ./
RUN npm install
RUN npm i sharp
#copy code
COPY . .
RUN npm run build

EXPOSE 3000

CMD ["npm","start"]

