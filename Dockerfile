#Use the official Node.js image as the base image
FROM node:14

#Set the working directory inside the container
WORKDIR /usr/src/app

#Copy package.json to the file
#COPY package*.json ./

#Install application dependencies
RUN npm install

#Copy the rest of the application files
COPY . /usr/src/app

#Expose the port on which the application will run
EXPOSE 3000

#command to run application
CMD [ "npm", "start" ]