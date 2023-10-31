#FROM node:16

#Working Directory
#WORKDIR /usr/src

#Copy Package Json Files
#OPY package*.json ./ 
# * grabs package and package log

#Install npm
#RUN npm install

# Copy the rest of the source files into the image.
#COPY . . 


# Expose the API Port
#EXPOSE 3000

#CMD [ "node", "index.js"]

FROM node:16.17.0

WORKDIR /app
 
COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm install
 
COPY . .
 
CMD [ "node", "index.js" ]