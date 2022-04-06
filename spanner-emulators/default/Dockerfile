####
# This Dockerfile is used in order to build a container that runs Google's Spanner emulator intialized with
###
FROM google/cloud-sdk:380.0.0-emulators

WORKDIR /usr/bin

COPY init.sh .
COPY run.sh .

# Expose the default ports 9010 (gRPC) and 9020 (REST)
EXPOSE 9010 9020

CMD [ "run.sh" ]

# Run the gateway process, bind to 0.0.0.0 as under MacOS, listening on
# localhost will make the server invisible outside the container.
#CMD ["./gateway_main", "--hostname", "0.0.0.0"]

