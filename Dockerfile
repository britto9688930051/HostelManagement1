FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN javac -cp ".:sqlite-jdbc.jar:slf4j-api.jar:slf4j-simple.jar" -d . src/*.java
EXPOSE 10000
CMD ["java", "-cp", ".:sqlite-jdbc.jar:slf4j-api.jar:slf4j-simple.jar", "HostelServer"]