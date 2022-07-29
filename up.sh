#!/bin/bash

docker run --name e2tech -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -p 5432:5432 -d postgres:12-alpine

while :; do
    ! [ "$(docker ps -aq -f status=running -f name=e2tech)" ] || break
    echo waiting
done

cd e2tech-auth-svc && make createdb && make migrateup && cd ..
cd 2tech-passenger-svc && make createdb && make migrateup && cd ..
cd e2tech-booking-svc && make createdb && make migrateup && cd ..
