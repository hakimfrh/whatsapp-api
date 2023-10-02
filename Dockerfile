FROM node:lts-buster

RUN apt-get update && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install --force

COPY . .

CMD ["node", "."]
