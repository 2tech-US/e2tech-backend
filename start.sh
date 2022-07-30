#!/bin/bash

cd e2tech-auth-svc && make auth_svc &
cd ..
cd e2tech-passenger-svc && make passenger_svc &
cd ..
cd e2tech-booking-svc && make booking_svc &
cd ..
cd e2tech-api-gateway && make api_gateway &
cd ..
fg
