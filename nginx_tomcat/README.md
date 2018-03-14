# tomcat과 docker를 한 이미지로 생성

## tomcat docker image 에 nginx를 설치하고 nginx와 tomcat을 연동 한다.

### 파일 구성

- Dockerfile
> tomcat 8.5.29-jre8-alpine docker image를 base로 nginx를 설치하고,  
conf, source디렉토리에 있는 파일들을 image안의 디렉토리에 copy 한다.

- init.sh
> tomcat base 이미지이기 때문에 init.sh로  nginx와 tomcat을 한번에 구동한다.
- conf
> nginx와 tomcat 설정 파일들이 위치한다.
- source
> hello world를 출력하는 index.jsp가 위치한다. 
