#1 Base Image (OS)
FROM node:18-alpine

#2 Working Directory
WORKDIR /app

#3 copy the code from the host to container working directory
COPY server.js /app/server.js

#3.1 copy the package.json file
COPY package.json /app/

COPY . .

#4 install dependency files
RUN npm install

#5 expose the port to run on 
EXPOSE 3000

#6 serve the command to start the application
CMD ["node","server.js"]
   
