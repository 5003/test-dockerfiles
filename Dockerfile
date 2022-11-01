FROM mcr.microsoft.com/powershell:latest
RUN apt update && \
    apt --yes install git && \
    apt --yes install npm && \
    apt --yes install python3-pip && \
    apt --yes install software-properties-common
RUN add-apt-repository --yes ppa:brightbox/ruby-ng && \
    apt --yes install ruby2.7 && \
    apt --yes install ruby-dev && \
    gem install bundler --version 1.17.3
RUN npm install --global newman && \
    pip install robotframework && \
    pip install mdformat-gfm