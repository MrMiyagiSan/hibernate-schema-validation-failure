####
# This Dockerfile is used in order to build a container that runs Google's Spanner emulator intialized with a project
# "test-project", a spanner instance "test-instance" and a database "car". The resulting database connection url is:
# jdbc:cloudspanner://localhost:9011/projects/test-project/instances/test-instance/databases/car;usePlainText=true
#
# The database is then initialized with the car.sql ddl, which creates the table Car.
###
FROM google/cloud-sdk:380.0.0-emulators

WORKDIR /usr/bin

COPY init.sh .
COPY run.sh .
COPY car.sql .

RUN chmod +x init.sh
RUN chmod +x run.sh
RUN chmod +r car.sql

# Expose the default ports 9010 (gRPC) and 9020 (REST)
EXPOSE 9010 9020

CMD [ "run.sh" ]
