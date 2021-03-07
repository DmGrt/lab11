#
# Build stage
#
FROM maven:3.6.3-jdk-8
COPY . .
RUN mvn -f pom.xml clean install
RUN cd hello_bot 
RUN mvn -X exec:java -Dexec.mainClass=kpi.acts.appz.bot.hellobot.HelloWorldBot -Dexec.args="'1628437518:AAHkDppuffbvv3g9ATXSlXa4N83iD-xBSA0' 'laberman_bot'"