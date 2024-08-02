#!/bin/bash

# Hiển thị logo hoặc thông báo chào mừng
echo "==============================="
echo "  Welcome to MurphyNode Setup  "
echo "==============================="

# Yêu cầu người dùng nhập tên
read -p "Enter your name: " NAME

# Hiển thị tên người dùng
echo "Hello, $NAME! Let's begin the setup."

# Kiểm tra và cài đặt các gói cần thiết
echo "Checking and installing necessary packages..."
sudo apt update && sudo apt install -y curl wget jq

# Kiểm tra phiên bản Go hiện tại
echo "Checking Go version..."
if go version > /dev/null 2>&1; then
    go version
else
    echo "Go is not installed. Installing Go..."
    VER="1.22.0"
    wget "https://golang.org/dl/go$VER.linux-amd64.tar.gz"
    sudo tar -C /usr/local -xzf "go$VER.linux-amd64.tar.gz"
    rm "go$VER.linux-amd64.tar.gz"
    echo "export PATH=\$PATH:/usr/local/go/bin:~/go/bin" >> ~/.bash_profile
    source ~/.bash_profile
    go version
fi

# Kiểm tra trạng thái cổng
echo "Checking network ports..."
for PORT in 1234 5678 8545; do
    if sudo lsof -i :$PORT > /dev/null; then
        echo "Port $PORT is in use."
    else
        echo "Port $PORT is free."
    fi
done

# Thiết lập biến môi trường
echo "Setting up environment variables..."
export NODE_ENV="testnet"
echo "Environment set to $NODE_ENV."

# Hiển thị thông báo kết thúc
echo "Setup complete. Goodbye, $NAME!"
