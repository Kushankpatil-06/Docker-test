FROM node:23
WORKDIR /myapp
COPY . .

RUN npm install
CMD [ "npm" ,"run" ,"dev" ]