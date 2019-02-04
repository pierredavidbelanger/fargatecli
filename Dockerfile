FROM alpine:3.9
RUN apk add --no-cache ca-certificates python3 wget \
    && pip3 install awscli \
    && wget https://github.com/jpignata/fargate/releases/download/v0.2.3/fargate-0.2.3-linux-amd64.zip \
    && unzip fargate-0.2.3-linux-amd64.zip \
    && rm fargate-0.2.3-linux-amd64.zip \
    && chmod +x fargate \
    && mv fargate /usr/local/bin/fargate