FROM nextcloud:27

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y non-free && \
    apt-get update && \
    apt-get install -y intel-media-va-driver-non-free ffmpeg && \
    rm -rf /var/lib/apt/lists/*

COPY start.sh /
CMD /start.sh