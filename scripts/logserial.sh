#!/usr/bin/env bash
LOG="/tmp/msx2p-boot-serial.log"
DEV="/dev/cu.usbserial-12410"
BAUD="115200"

rm -f "$LOG"

screen -L -c <(echo "logfile $LOG") "$DEV" "$BAUD"
