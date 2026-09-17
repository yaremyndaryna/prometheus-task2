FROM node:alpine

WORKDIR /koa-app
ENV REDIS_ADRESS=localhost \
    REDIS_PORT=6379 
COPY . /koa-app
RUN npm ci --omit=dev
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
