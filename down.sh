if [ "$(docker ps -aq -f status=running -f name=e2tech)" ]; then
    docker stop e2tech
    docker rm e2tech
fi
