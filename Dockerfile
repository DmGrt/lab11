#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean install
RUN mvn -X exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot -Dexec.args="'1628437518:AAHkDppuffbvv3g9ATXSlXa4N83iD-xBSA0' 'laberman_bot'"