#!/bin/bash

# Hiển thị logo hoặc thông báo chào mừng

sleep 1 && curl -s https://raw.githubusercontent.com/syoarttt/scripts/MurphyNode/logo.sh | bash && sleep 1

# Yêu cầu người dùng nhập tên
read -p "Enter your name: " NAME

# Hiển thị tên người dùng
echo "Hello, $NAME! Let's begin the setup."

# Hiển thị thông báo kết thúc
echo "Setup complete. Goodbye, $NAME!"
