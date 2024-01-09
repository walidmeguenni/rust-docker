FROM rust:latest

RUN apt-get update -y \
    && apt upgrade -y \
    && apt-get install -y \
    libssl-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*
    
WORKDIR /usr/src/app

COPY Cargo.toml Cargo.lock ./

COPY . .

RUN cargo build --release

EXPOSE 7770

CMD ["cargo", "run", "--release"]
