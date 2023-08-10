FROM yarnpkg/node-yarn:latest

WORKDIR /app
COPY . /app

# Install dependencies package
RUN yarn install
CMD [ "yarn", "run", "start" ]
