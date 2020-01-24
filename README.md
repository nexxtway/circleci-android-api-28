# Build image based on circleci/android:api-28 with:

- fastlane 2.140.0
- firebase-tools 7.12.1
- ImageMagick 7.0.9-17

## Working locally

### Build the image
```
docker build -t nexxtway/circleci-android-api-28 .
```

### Run image with bash 
```
docker run -i -t nexxtway/circleci-android-api-28 /bin/bash
```

### Push to docker hub
```
docker push nexxtway/circleci-android-api-28:latest
```


This image should work with CircleCI 2.0. This image could be find on [Docker Hub](https://hub.docker.com/r/nexxtway/circleci-android-api/) and freely used, but updates are not guaranteed ;-).
