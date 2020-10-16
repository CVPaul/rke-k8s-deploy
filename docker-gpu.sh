##########################################################################
# File Name: docker-gpu.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Fri 16 Oct 2020 02:35:04 PM CST
#########################################################################
#!/bin/zsh
cd ~
echo "current user : ${USER}"

echo -n "input the mapping port:"
read docker_image_port

docker_final_image="harbor.your.domain/image:tag"
/usr/bin/docker run --runtime=nvidia --rm -it \
    -v /home/${USER}:/home/${USER} --user=${UID}:${GID} -w /home/${USER} \
    -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro \
    -p $docker_image_port:$docker_image_port $docker_final_image

