#!/bin/bash
git clone https://github.com/jinqiangtop/lede-custom.git

sleep 5
cd lede-custom

sleep 5
./scripts/feeds update -a && ./scripts/feeds install -a

sleep 5
make -j8 download V=s  && make -j8 V=s
