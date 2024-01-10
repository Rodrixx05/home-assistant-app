    FROM nodered/node-red:latest
    USER root
    RUN apk add --no-cache python2 g++ make
    WORKDIR /app
    COPY . .
    RUN yarn install --production
    USER node-red
    CMD ["node", "src/index.js"]