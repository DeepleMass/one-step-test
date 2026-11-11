#!/bin/bash
# Erfassungsskript (Rekonstruktion des Originals).
#
# Entnimmt stuendlich genau einen Block von bis zu 1024 Bytes aus
# /dev/random; der Dateiname ist der Zeitpunkt der Entnahme im
# Format YYYY_MM_DD_HH_MM_SS (aus den vorliegenden Dateinamen
# abgeleitet). Kurze Lesezugriffe des Entropie-Pools ergeben
# gelegentlich kleinere Dateien (im Bestand: 2790 von 2796 Dateien
# exakt 1024 Bytes, der Rest 6 kurze Reads mit 1001 bis 1014 Bytes).
#
# Aufruf: ./sammle.sh [zielverzeichnis]
#
# Der vorliegende Bestand (14.04.2016 bis 13.11.2016) liegt im
# Repository one-step-test (https://github.com/DeepleMass/one-step-test)
# unter dev/random.

set -eu

ZIEL="${1:-.}"
mkdir -p "$ZIEL"

while true; do
    dd if=/dev/random of="$ZIEL/$(date +%Y_%m_%d_%H_%M_%S)" bs=1024 count=1
    sleep 3600
done
