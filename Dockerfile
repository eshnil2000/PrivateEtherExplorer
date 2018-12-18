#from node:8.11.1

from node:8.14.0-alpine
RUN apk add --no-cache git

# Create app directory
WORKDIR /usr/src/app

COPY ./package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8546
CMD [ "npm", "start" ]

