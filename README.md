# docker-ubuntu-cvspserver
cvspserver running in a ubuntu docker container

### Run container

docker run -p 2401:2401 -e CVSROOT=/your/cvs/root -v /your/data/path:/your/cvs/root stjheitc/ubuntu-cvspserver 

### Add CVS User
docker exec yourserver /root/adduser.sh username password

### Add CVS Writer
docker exec yourserver /root/addwriter.sh username