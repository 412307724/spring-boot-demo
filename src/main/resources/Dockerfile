# 该镜像需要依赖的基础镜像
FROM openjdk:8
# 指定维护者名称
MAINTAINER chengtry
# 将当前目录下的jar包复制到docker容器根目录下面
ADD pinwo.jar pinwo.jar
# 声明服务运行在8083端口
EXPOSE 8083
# 执行命令
CMD ["java","-jar","pinwo.jar"]