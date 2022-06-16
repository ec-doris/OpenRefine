FROM maven:3.6.0-jdk-11-slim AS build
COPY . /home/app/
WORKDIR /home/app/
ENTRYPOINT ./refine -i 0.0.0.0
EXPOSE 3333
