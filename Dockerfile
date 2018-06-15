FROM bschwind/esp-32-build

RUN apt-get update -qq \
    && apt-get install -y libgd-dev libxml2-dev imagemagick

ENV POCKETSPRITE_PATH /esp/8bkc-sdk
RUN mkdir -p POCKETSPRITE_PATH

WORKDIR /esp/project
ENTRYPOINT ["/bin/bash"]
