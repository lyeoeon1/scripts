#!/bin/bash

# Hiển thị logo hoặc thông báo chào mừng
source <(curl -s https://raw.githubusercontent.com/syoarttt/scripts/MurphyNode/logo.sh)

printLogo

# Yêu cầu người dùng nhập tên
read -p "Enter your name: " NAME

# Hiển thị tên người dùng
echo "Hello, $NAME! Let's begin the setup."

# Hiển thị thông báo kết thúc
echo "Setup complete. Goodbye, $NAME!"
