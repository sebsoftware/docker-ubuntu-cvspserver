# docker-ubuntu-cvspserver
cvspserver running in a ubuntu docker container

## Configuration

### Environment variables

#### CVSROOT - specify CVSROOT location inside the container
Specifying a custom CVSROOT offers the possibility to migrate an existing
CVS repository into the Docker container without relocating CVSROOT in already
checkout projects.

### Run container

docker run -p 2401:2401 -e CVSROOT=/your/cvs/root -v /your/data/path:/your/cvs/root stjheitc/ubuntu-cvspserver 

### Add CVS User
docker exec yourserver /root/adduser.sh username password

### Add CVS Writer
docker exec yourserver /root/addwriter.sh username
