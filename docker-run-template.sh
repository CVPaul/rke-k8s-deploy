##########################################################################
# File Name: template.sh
# Author: xianqiu_li
# mail: xianqiu_li@163.com
# Created Time: Mon 02 Nov 2020 04:08:31 PM CST
#########################################################################
#!/bin/zsh

## run the docker image
cd ~
echo "current user : ${USER}"

echo -n "input the mapping port:"
read docker_image_port

docker_final_image="registry.your.domain/the_image_name:tag"
/usr/bin/docker run --runtime=nvidia --rm -it -v /home/${USER}:/home/${USER} --user=${UID}:${GID} -w /home/${USER} \
                                        -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro \
                                        -p $docker_image_port:$docker_image_port $docker_final_image
