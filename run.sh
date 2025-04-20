#!/bin/bash
set -e

# Cài đặt dependencies
apt-get update
apt-get install -y wget tar xz-utils lib32gcc-s1

# Tải FiveM (phiên bản cố định ổn định)
wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/5848-4a1ad37603deb75b31d32a5c911fb8b34f6b5d3a/fx.tar.xz

# Giải nén và chạy
tar xf fx.tar.xz
exec ./run.sh
