FROM public.ecr.aws/rogii/openjdk:11-corretto-mvn AS build
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

FROM public.ecr.aws/rogii/openjdk:11-corretto-mvn
COPY --from=build /tmp/target/*.jar /app/app.jar
CMD java -jar /app/app.jar
EXPOSE 8080
