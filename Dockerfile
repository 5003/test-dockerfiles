FROM mcr.microsoft.com/powershell:latest
RUN apt update && \
    apt --yes install npm && \
    apt --yes install python3-pip
RUN npm install --global newman && \
    pip install robotframework