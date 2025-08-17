# frontend/Dockerfile
FROM node:20

WORKDIR /usr/src/app

COPY . .

RUN npm install -g @angular/cli

RUN npm install --force

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]