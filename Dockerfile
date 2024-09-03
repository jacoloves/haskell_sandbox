FROM haskell:latest

WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    curl \
    git \
    && curl -sSL https://aka.mas/install-vscode-server/setup.sh | sh

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["bash"]