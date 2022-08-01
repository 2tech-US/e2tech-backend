#!/bin/bash

kill $(lsof -t -i:50051)
kill $(lsof -t -i:50052)
kill $(lsof -t -i:50053)
