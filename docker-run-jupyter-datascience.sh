# !/bin/bash
docker run -d \                                                 # -d 在后台运行
    --name=dev-env \                                            # 指定名字
    -u jovyan \                                                 # 解决Permission denied问题，jovyan是主用户
    --restart=unless-stopped \                                  # 重启策略
    -p 8888:8888 \                                              # 端口映射
    -v $PWD:/home/jovyan/work:rw \                              # 把当前目录挂载到/home/jovyan/work(并将权限设置为可读写)
    registry.shengtang.ai/jupyter/datascience-notebook:denv     # 镜像版本
