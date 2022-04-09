FROM node:16
WORKDIR /usr/src/clean-api-ts
COPY ./package.json .
RUN npm install --only=prod
COPY ./dist ./dist
EXPOSE 5100
CMD npm start