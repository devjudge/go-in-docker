FROM golang:1.16.3-buster as build

RUN wget https://codejudge-starter-repo-artifacts.s3.ap-south-1.amazonaws.com/backend-project/python/pre-build.sh
RUN chmod 775 ./pre-build.sh
RUN sh pre-build.sh

# RUN curl -L https://packagecloud.io/golang-migrate/migrate/gpgkey | apt-key add -

# RUN apt-get update && apt-get install -y lsb-release && apt-get clean all

# RUN echo "deb https://packagecloud.io/golang-migrate/migrate/ubuntu/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/migrate.list

# RUN apt-get update

# RUN apt-get install -y migrate

RUN curl -s https://packagecloud.io/install/repositories/golang-migrate/migrate/script.deb.sh | bash

RUN apt-get update

RUN apt-get install -y migrate

RUN migrate -version

RUN go get -u github.com/pressly/goose/cmd/goose

RUN wget https://codejudge-starter-repo-artifacts.s3.ap-south-1.amazonaws.com/backend-project/database/db-setup.sh
RUN chmod 775 ./db-setup.sh
RUN sh db-setup.sh

RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
EXPOSE 8080
RUN go build -o main . 

RUN wget https://codejudge-starter-repo-artifacts.s3.ap-south-1.amazonaws.com/backend-project/golang/run-2.sh
RUN chmod 0755 ./run-2.sh
CMD sh run-2.sh