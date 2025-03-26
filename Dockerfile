FROM react:16.4.1

WORKDIR /App

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5000

ENTRYPOINT ["npm"]

CMD ["run","start"]