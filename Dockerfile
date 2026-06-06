# Build: see bin/build.sh
# Push target: ghcr.io/platypod/pokeclicker:<VERSION>
FROM node:lts

LABEL org.opencontainers.image.source=https://github.com/platypod/pokeclicker

WORKDIR /app

RUN apt-get update && apt-get install -y git curl tar openssl

ARG VERSION=v0.10.25
RUN git clone https://github.com/pokeclicker/pokeclicker.git . \
 && git checkout ${VERSION} \
 && git submodule update --init --recursive

RUN npm install
RUN npm run clean

EXPOSE 3000

CMD ["npm", "start"]
