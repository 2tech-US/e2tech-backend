#!/bin/bash

kill $(lsof -t -i:50051)
kill $(lsof -t -i:50052)
kill $(lsof -t -i:50053)
kill $(lsof -t -i:50054)
kill $(lsof -t -i:50057)
