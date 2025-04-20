#!/bin/bash
set -ex

# Cài đặt các phụ thuộc cần thiết
apt-get update
apt-get install -y wget tar xz-utils lib32gcc-s1

# Tải FiveM
ARTIFACT="5848-4a1ad37603deb75b31d32a5c911fb8b34f6b5d3a"
wget -q https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/${ARTIFACT}/fx.tar.xz

# Giải nén và chạy
tar xf fx.tar.xz
exec ./run.sh
