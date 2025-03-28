FROM node:20 AS builder

WORKDIR /App

COPY package*.json ./

RUN npm ci --only=production

COPY . .

FROM node:23-alpine

WORKDIR /App

COPY --from=builder ./App .

EXPOSE 5000

ENTRYPOINT ["npm"]

CMD ["run","start"]