FROM node:carbon

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./

RUN yarn
RUN yarn prestart:prod

COPY . .

EXPOSE 3000
CMD [ "yarn", "run", "start:prod" ]