#!/bin/bash
rm -rf /storage/RpiPlay
docker build . -t rpiplay_builder
mkdir /storage/RpiPlay
docker run -it -v /storage/RpiPlay:/release rpiplay_builder /bin/bash -c "cp -r /work/RPiPlay/build/rpiplay /work/RPiPlay/build/lib* /release"
echo "RPiPlay has been built in the /storage/RpiPlay folder."
