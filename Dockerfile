FROM mcr.microsoft.com/playwright:focal

USER root

RUN npm i pnpm -g

RUN mkdir /home/node/app
WORKDIR /home/node/app

COPY package.json pnpm-lock.yaml /home/node/app/
RUN pnpm i --frozen-lockfile

COPY . /home/node/app

CMD ["npm", "test"]