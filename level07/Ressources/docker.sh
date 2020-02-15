mkdir /goinfre/${USER}/ 2> /dev/null
mkdir /goinfre/${USER}/docker 2> /dev/null
rm -rf  /Users/${USER}/Library/Containers/com.docker.docker
ln -fs /goinfre/${USER}/docker ~/Library/Containers/com.docker.docker
chmod 700 /goinfre/${USER}
docker build -t i386/ubuntu .
docker run --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -ti -v `pwd`/../..:/root i386/ubuntu
