FROM debian:bookworm-slim
RUN apt update && apt upgrade -y
RUN apt install -y nginx nodejs npm software-properties-common apt-transport-https wget ca-certificates gnupg2 default-mysql-server
RUN mkdir /run/mysqld
RUN chown -R mysql:mysql /run/mysqld
WORKDIR /app
COPY package*.json .
RUN npm install
COPY dist/ dist
COPY migrate/ migrate
COPY views/ views
COPY public/ public
COPY public/ /usr/share/nginx/html/public
COPY .env .
COPY *start-server.sh .

CMD [ "mysqld", "--skip-grant-tables" ]

