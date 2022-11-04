FROM node:alpine

WORKDIR /usr/app

RUN apk add --no-cache openssh-client git

RUN mkdir -p -m 0700 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN --mount=type=ssh git clone git@github.com:Rekaad/FullStackChmura.git .

RUN npm install

CMD ["npm", "start"]

EXPOSE 8080
