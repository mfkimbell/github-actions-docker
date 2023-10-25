FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME cluster0
ENV MONGODB_CLUSTER_ADDRESS cluster0.0mzfhaf.mongodb.net
ENV MONGODB_USERNAME mfkimbell
ENV MONGODB_PASSWORD 4D8nfUZBH6ucoQQu

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]