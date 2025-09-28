# 런타임 전용 가벼운 이미지
FROM eclipse-temurin:17-jre-jammy
#FROM eclipse-temurin:17-jre-alpine

ENV VERSION=1.0-SNAPSHOT

# 애플리케이션 JAR 복사
ARG JAR_FILE=target/springboot-helloworld-${VERSION}.jar
COPY ${JAR_FILE} /app/app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]