#!/bin/bash
chmod +x "$0"  # Tự động cấp quyền khi chạy
set -e

# Phần còn lại của script...
#!/bin/bash
set -e

# Cài đặt dependencies cực kỳ quan trọng
echo "🔹 Đang cài đặt dependencies..."
apt-get update > /dev/null
apt-get install -y --no-install-recommends \
    wget \
    tar \
    xz-utils \
    lib32gcc-s1 \
    > /dev/null

# Tải FiveM (phiên bản ổn định đã kiểm nghiệm)
echo "🔹 Đang tải FiveM artifacts..."
ARTIFACT="5848-4a1ad37603deb75b31d32a5c911fb8b34f6b5d3a"
wget -q --show-progress \
    https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/${ARTIFACT}/fx.tar.xz

# Giải nén và chuẩn bị chạy
echo "🔹 Đang giải nén và khởi động..."
tar xf fx.tar.xz
chmod +x run.sh

# Khởi động server
echo "✅ Server đang khởi động..."
exec ./run.sh
