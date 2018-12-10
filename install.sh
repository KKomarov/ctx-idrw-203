#!/usr/bin/env bash

git clone https://github.com/merbanan/rfid_app.git
apt update
apt install usblib-1.0-0-dev
cd rfid_app
make
