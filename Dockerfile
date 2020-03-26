FROM openjdk:11.0.6-slim
EXPOSE 8761
ARG JAR_FILE=target/serviceregistry.jar
COPY ${JAR_FILE} serviceregistry.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /serviceregistry.jar"]
#ENTRYPOINT ["java","-jar","/serviceregistry.jar"]