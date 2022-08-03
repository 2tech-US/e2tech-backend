#!/bin/bash
docker start e2tech
source ./stop.sh
cd ..
cd e2tech-auth-svc && make auth_svc &
cd e2tech-passenger-svc && make passenger_svc &
cd e2tech-driver-svc && make driver_svc &
cd e2tech-booking-svc && make booking_svc &
cd e2tech-api-gateway && make api_gateway
