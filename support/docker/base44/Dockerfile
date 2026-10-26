# Base44 sandbox runtime for PeerTube development.
#
# This is a plain Node.js runtime image on purpose: the repository is
# bind-mounted at /app by docker-compose.base44.yml and dependencies are
# installed at container startup, so every code edit is picked up by the
# live-reloading dev servers (Angular `ng serve` + server `tsc-watch`).
# Do not copy the sources in here: a baked image would freeze the code.
FROM node:22-trixie-slim

# System dependencies PeerTube expects on the host:
#  - ffmpeg: transcoding, thumbnails, storyboards (must provide libx264)
#  - python3/pip, build-essential: native node modules (bcrypt, node-datachannel...)
#  - openssl, ca-certificates, git, curl
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      ffmpeg \
      git \
      openssl \
      python3 \
      python3-pip \
      build-essential \
 && rm -rf /var/lib/apt/lists/*

# Same pnpm version as the "packageManager" field of the root package.json
RUN npm install -g pnpm@10.15.1

ENV NODE_ENV=dev

WORKDIR /app
