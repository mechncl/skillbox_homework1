FROM node

RUN mkdir  /flatris
WORKDIR /flatris

COPY package.json /flatris
RUN yarn install

COPY . /flatris

RUN yarn build

CMD yarn start

EXPOSE 3000
