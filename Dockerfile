# use nodejs as a base image
FROM node:14

# the working directory in the container file system
WORKDIR /app

# copy package.json into our working directory
COPY package.json .

# run the npm install command to install all the dependencies our application needs
RUN npm install

# copy the rest of the code here
COPY . .

# expose port 3000 to the outside world to reach that port from outside of the container,not just inside the container.
EXPOSE 3000

# then we execute app.mjs with the node command
CMD [ "node", "app.mjs"]