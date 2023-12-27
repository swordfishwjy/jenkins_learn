# use nodejs image
FROM node

# tell docker which directory to run the following commands in
WORKDIR /app

# set working directory. Copy the current directory content to the container's root/default or a named directory
COPY . ./

# install dependencies
RUN npm install

# export port 80
EXPOSE 80

# command when container starts
CMD ["node", "server.js"]