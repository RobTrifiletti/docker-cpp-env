# Dockerfile for BaseEnv
FROM gcc:6.1
RUN apt-get update && apt-get install -y \
    cmake \
    libssl-dev \
    libgmp-dev \
    libzmq3-dev \
    subversion \
    && rm -rf /var/lib/apt/lists/* \
    && echo '* - nofile 10000' >> /etc/security/limits.conf