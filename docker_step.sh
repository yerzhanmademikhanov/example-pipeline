docker run hello-world

docker ps -as | grep hello-world | docker rm $(awk '{print $1}')
