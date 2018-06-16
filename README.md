# 8bkc build environment

This Dockerfile is for setting up a container to build applications for the Pocksprite

## Usage
You must have checked out the 8bkc-sdk project, https://github.com/PocketSprite/8bkc-sdk, and the esp-idf project, https://github.com/espressif/esp-idf. 

To build an image
```
docker build -t some_readable_tag .
```
To run the container
```
docker run --rm -it -v ${POCKETSPRITE_SDK_PATH}/../8bkc-sdk:/esp/8bkc-sdk -v ${ESP_IDF_PATH}/../esp-idf:/esp/esp-idf -v ${PATH_TO_PROJECT}:/esp/project some_readable_tag
```

## Notes to myself
* The local volume paths must be the fully qualified paths
* This image is probably way bigger than it needs to be
* Does this need both the esp-idf path and the 8bkc-sdk path? The recursively checked out 8bkc-sdk project seems to include the esp-idf sdk.

