FROM node:hydrogen-alpine3.19

WORKDIR /app/docker-task

COPY package.json .
COPY vite.config.js .
COPY tailwind.config.js .
COPY postcss.config.js .

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080

CMD [ "npm","run", "preview" ] 


