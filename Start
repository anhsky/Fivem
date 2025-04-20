# Chọn image Ubuntu cơ bản
FROM ubuntu:20.04

# Cập nhật và cài đặt các gói cần thiết
RUN apt-get update && apt-get install -y \
  wget \
  git \
  screen \
  nano \
  unzip \
  xz-utils \
  ca-certificates \
  lib32gcc1 \
  lib32stdc++6 \
  && rm -rf /var/lib/apt/lists/*

# Cài đặt FiveM
WORKDIR /fivem
RUN wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/2991-d9fc7bb0e98c33f4ff7fd0d86399091d6596bfa7/fx.tar.xz \
  && tar -xvf fx.tar.xz \
  && rm fx.tar.xz

# Tải và cài đặt các tài nguyên của FiveM từ server của bạn (nếu có)
# (Đảm bảo bạn có các resource để cài đặt vào server)

# Mở port 30120 cho FiveM
EXPOSE 30120

# Chạy server FiveM
CMD ["bash", "run.sh"]
