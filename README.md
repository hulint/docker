# docker

# mariadb
> docker run --name local-mariadb -p 3306:3306 -d -e MYSQL_ROOT_PASSWORD=rootpassword  mariadb  
 container 종료 : docker stop local-mariadb   
 container 시작 : docker start local-mariadb   
## docker-compose
> docker-compose -f maria/mariadb.yml up  
container 종료 : docker-compose -f maria/mariadb.yml stop   
container 시작 : docker-compose -f maria/mariadb.yml start    
***

# redis
> docker run --name local-redis -p 6379:6379 -d redis   
 container 종료 : docker stop local-redis  
 container 시작 : docker start local-redis  
## docker-compose
> docker-compose -f redis/redis.yml up  
 container 종료 : docker-compose -f redis/redis.yml stop  
 container 시작 : docker-compose -f redis/redis.yml start  

***

# centos7 방화벽

## mariadb 방화벽 오픈
> sudo firewall-cmd --permanent --zone=public --add-port=3306/tcp

## redis 방화벽 오픈
> sudo firewall-cmd --permanent --zone=public --add-port=6379/tcp

## 방화벽 재시작
> sudo firewall-cmd --reload
