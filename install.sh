#!/usr/bin/env bash

git clone https://github.com/merbanan/rfid_app.git
sudo rm -rf /var/lib/apt/lists/*
sudo apt update
sudo apt install usblib-1.0-0-dev
cd rfid_app
make
