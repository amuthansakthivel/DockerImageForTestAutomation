FROM maven:3.6.3-jdk-8
COPY src  home/seleniumframework/src
COPY test-output  home/seleniumframework/test-output
COPY pom.xml	home/seleniumframework/pom.xml
COPY testng.xml	home/seleniumframework/testng.xml
ENV DISPLAY=:99.0
WORKDIR home/seleniumframework
ENTRYPOINT mvn clean test