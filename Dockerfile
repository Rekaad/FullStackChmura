FROM node:alpine

WORKDIR /usr/app

RUN apk add --no-cache openssh-client git
RUN apk add --update nodejs npm
RUN apk add --update openssh
RUN apk add --update git

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN --mount=type=ssh git clone git@github.com:Rekaad/FullStackChmura.git .

RUN npm install

CMD ["npm", "start"]

EXPOSE 8080

