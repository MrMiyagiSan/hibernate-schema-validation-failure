####
# This Dockerfile is used in order to build a container that runs Google's Spanner emulator intialized with
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
