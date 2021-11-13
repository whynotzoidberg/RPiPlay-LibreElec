FROM debian:latest

RUN apt update && apt install -y git cmake libavahi-compat-libdnssd-dev libplist-dev libssl-dev g++ wget zip

WORKDIR /work

# Get the raspberry pi firmware library
RUN wget https://github.com/raspberrypi/firmware/archive/master.zip

RUN unzip master.zip 'firmware-master/opt/*' -d .

RUN mv ./firmware-master/opt/vc/ /opt

# Get RPiPlay source code
RUN git clone https://github.com/FD-/RPiPlay.git
WORKDIR /work/RPiPlay


# Copy the libdns_sd library
RUN mkdir build

#ENTRYPOINT ["/bin/bash"]

RUN cp /usr/lib/arm-linux-gnueabihf/libdns_sd.so.1 ./build/
RUN cp /usr/lib/arm-linux-gnueabihf/libplist-2.0.so.3 ./

# # Alter the cmake file to use the libdns_sd library locally
RUN printf "\nadd_library(dns_sd SHARED IMPORTED GLOBAL)\nset_target_properties(dns_sd PROPERTIES IMPORTED_LOCATION \"./libdns_sd.so.1\")\n" >>./lib/CMakeLists.txt

RUN cd build && cmake .. && make
