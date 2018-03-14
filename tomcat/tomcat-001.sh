#!/bin/bash
# -e 设置的TOMCAT_SERVER_ID变量 可以使用docker compose 实现下面语句，docker compose可以同时管理多个container
docker run --name=tomcat-001 -p 8080:8080 -e TOMCAT_SERVER_ID=tomcat-server-001 -idt jason-tomcat:0.0.1