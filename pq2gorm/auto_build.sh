docker stop pq2gorm
docker rm -f pq2gorm
docker build -t pq2gorm:1.0.0 .
docker run --name pq2gorm \
           -ti -d \
           pq2gorm:1.0.0 \
           sh

docker rmi -f $(docker images | grep "<none>")
sudo docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs sudo docker rm
