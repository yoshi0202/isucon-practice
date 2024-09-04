FROM node:20-slim
RUN apt update
WORKDIR /app
COPY package*.json .
RUN npm install
COPY dist/ dist
COPY migrate/ migrate
COPY views/ views
COPY .env .

CMD [ "npm", "run", "dev" ]
