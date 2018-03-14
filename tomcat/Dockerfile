#基础镜像
FROM tomcat:latest

#作者
MAINTAINER JasonLi <554856005@qq.com>

#定义工作目录
ENV TOMCAT_PATH /usr/local/tomcat
#ENV 定义环境变量
#定义要替换的文件名
ENV USER_CONF_FILE_NAME ./conf/tomcat-users.xml

#定义要替换的server.xml文件名
ENV SERVER_CONF_FILE_NAME ./conf/server.xml

#定义项目war包路径
ENV APP_WAR ./webapps/hello.war

#删除原文件tomcat-users.xml
RUN rm $TOMCAT_PATH/$USER_CONF_FILE_NAME

#复制文件tomcat-users.xml
COPY  ./$USER_CONF_FILE_NAME $TOMCAT_PATH/conf

#删除原文件server.xml
RUN rm $TOMCAT_PATH/$SERVER_CONF_FILE_NAME

#复制文件server.xml
COPY  ./$SERVER_CONF_FILE_NAME $TOMCAT_PATH/conf

COPY $APP_WAR $TOMCAT_PATH/webapps
