mkdir -p /goinfre/${USER}/docker
rm -rf  /Users/${USER}/Library/Containers/com.docker.docker
ln -fs /goinfre/${USER}/docker ~/Library/Containers/com.docker.docker
chmod 500 /goinfre/${USER}
docker build -t kalilinux/kali-linux-docker .
docker run --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -ti -v `pwd`/../../../:/tmp kalilinux/kali-linux-docker 
