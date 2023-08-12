FROM node:20-alpine3.17

WORKDIR /app
COPY . /app

# Install dependencies package
RUN npm install -g yarn
RUN yarn install
CMD [ "yarn", "run", "start" ]
