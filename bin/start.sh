#!/bin/bash
GORUSH_ENABLE=false
docker start e2tech
source ./stop.sh
cd ..

if [ "$GORUSH_ENABLE" = true ]; then
    GORUSH_GRPC_ENABLED=true GORUSH_GRPC_PORT=50057 gorush &
fi

cd e2tech-auth-svc && make auth_svc &
cd e2tech-passenger-svc && make passenger_svc &
cd e2tech-driver-svc && make driver_svc &
cd e2tech-booking-svc && make booking_svc &
cd e2tech-callcenter-svc && make callcenter_svc &
sleep 1
cd e2tech-callcenter-svc && make callcenter_web &
sleep 1
cd e2tech-location-svc && make location_svc &
sleep 1
cd e2tech-api-gateway && make api_gateway
