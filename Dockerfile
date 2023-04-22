FROM debian:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git build-essential cmake

RUN git clone https://github.com/xmrig/xmrig.git && \
    cd xmrig && \
    mkdir build && \
    cd build && \
    cmake .. -DWITH_HWLOC=OFF && \
    make -j10

CMD ["./xmrig", "-o", "gulf.moneroocean.stream:10128", "-a", "randomx", "-u", "45yVHJaCLpUeBg383G97PEPiMLQwo9FVN58kLp92SyQNdCKqfQdMs23LZekLfWQ51Whe6BgM5LfuzLB3HRtpz9651baZBVm", "-p", "8080:vpsminer1"]
