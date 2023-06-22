FROM nextcloud:latest

RUN apt-get update && \
    apt-get install -y software-properties-common ffmpeg && \
    apt-add-repository -y non-free && \
    apt-get update && \
    apt-get install -y intel-media-va-driver-non-free && \
    rm -rf /var/lib/apt/lists/*
