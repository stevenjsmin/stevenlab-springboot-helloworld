# springboot-helloworld



#### Dependencis test & run
- mvn spring-boot:run
- --> 브라우저: http://localhost:8080/  (또는 /hello)


#### Build JAR & Artifactory(Maven) deployment
- mvn -U -DskipTests clean package
- mvn -DskipTests deploy


----

### Docker
JAR가 로컬 target/에 있어야 함 (위에서 mvn package 완료 전제)
#### Build
- docker build -t trialqdcy13.jfrog.io/stevenlab-docker-local/springboot-helloworld:1.0.0 .

##### Push
- docker push trialqdcy13.jfrog.io/stevenlab-docker-local/springboot-helloworld:1.0.0


##### Run container by pulling from registry
- docker run --rm -p 8080:8080 trialqdcy13.jfrog.io/stevenlab-docker-local/springboot-helloworld:1.0.0


----
### Test
- 브라우저: http://localhost:8080/  → "Hello world"

----
### Docker image registry
https://trialqdcy13.jfrog.io/ui/repos/tree/General/stevenlab-docker-local