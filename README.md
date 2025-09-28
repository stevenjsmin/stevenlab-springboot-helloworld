# springboot-helloworld

#로컬 테스트

### 의존성 다운로드 & 실행
mvn spring-boot:run
--> # 브라우저: http://localhost:8080/  (또는 /hello)


### JAR 빌드 & Artifactory(Maven) 배포
mvn -U -DskipTests clean package
mvn -DskipTests deploy



### 이미지 빌드 & 푸시
# JAR가 로컬 target/에 있어야 함 (위에서 mvn package 완료 전제)
docker build -t trialqdcy13.jfrog.io/stevenlab-docker-local/springboot-helloworld:1.0.0 .
# 푸시
docker push trialqdcy13.jfrog.io/stevenlab-docker-local/springboot-helloworld:1.0.0




# 컨테이너 실행(로컬 확인)
docker run --rm -p 8080:8080 trialqdcy13.jfrog.io/stevenlab-docker-local/springboot-helloworld:1.0.0

# 브라우저: http://localhost:8080/  → "Hello world"
