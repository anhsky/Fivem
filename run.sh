#!/bin/bash
set -e

# Tải bản FiveM mới nhất
echo "Đang tải FiveM artifacts..."
LATEST_ARTIFACT=$(curl -s https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/ | grep -o '"[0-9]*-[a-f0-9]*/"' | tr -d '"' | sort | tail -n 1)
wget -q https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/${LATEST_ARTIFACT}/fx.tar.xz

# Giải nén và chạy
echo "Đang giải nén..."
tar xf fx.tar.xz
echo "Bắt đầu server FiveM..."
exec ./run.sh
