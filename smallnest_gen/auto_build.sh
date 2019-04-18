docker stop gorm_golang
docker rm -f gorm_golang
docker build -t gorm_golang:1.0.0 .
docker run --name gorm_golang \
           -ti -d \
           gorm_golang:1.0.0 \
           sh

docker rmi -f $(docker images | grep "<none>")
sudo docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs sudo docker rm
