FROM node:20-alpine3.17

WORKDIR /app
COPY . /app

# Install dependencies package
RUN npm install
CMD [ "npm", "run", "start" ]
