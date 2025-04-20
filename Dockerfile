FROM ubuntu:22.04

# Cài đặt các phụ thuộc cần thiết
RUN apt-get update && \
    apt-get install -y wget tar xz-utils curl lib32gcc-s1 && \
    rm -rf /var/lib/apt/lists/*

# Tạo thư mục làm việc
WORKDIR /fivem

# Copy các file cần thiết
COPY run.sh .
COPY server.cfg . # (nếu có)

# Cấp quyền thực thi
RUN chmod +x run.sh

# Mở cổng mạng
EXPOSE 30120/tcp
EXPOSE 30120/udp

# Lệnh khởi chạy
CMD ["./run.sh"]
