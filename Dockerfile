FROM circleci/android:api-28
LABEL maintaner.name="Nexxtway Team" 
LABEL maintaner.email="leandro@nexxtway.com"

USER root

# Installing fastlane
RUN gem install fastlane -NV

# Installing firebase-tools
RUN curl -sL https://firebase.tools | bash

# Installing ImageMagick
RUN curl https://imagemagick.org/download/ImageMagick.tar.gz --output ImageMagick.tar.gz
RUN tar xvzf ImageMagick.tar.gz
WORKDIR ImageMagick-7.0.9-17
RUN ./configure
RUN make
RUN make install
RUN ldconfig /usr/local/lib

RUN echo "%circleci        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
USER circleci
