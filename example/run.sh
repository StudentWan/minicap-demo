#!/usr/bin/env bash
adb shell LD_LIBRARY_PATH=/data/local/tmp /data/local/tmp/minicap -P 1080x1920@300x500/0 &
adb forward tcp:1717 localabstract:minicap
supervisor --harmony minicap.js
