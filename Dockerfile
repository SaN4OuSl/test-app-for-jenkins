FROM eclipse-temurin:17-jdk-focal

RUN apt-get update && \
    apt-get install -y postgresql-client redis-tools && \
    rm -rf /var/lib/apt/lists/*

COPY . /app

WORKDIR /app

RUN ./gradlew clean build

EXPOSE 8080

CMD ["java", "-jar", "build/libs/realworld.jar"]
