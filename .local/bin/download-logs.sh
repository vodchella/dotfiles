#!/bin/bash

echo "Downloading archive..."
scp -P 8517 log@45.12.4.22:/shared/logs.zip ~/Загрузки/logs.zip

echo "Extracting files from archive..."
unzip -o ~/Загрузки/logs.zip -d ~/Загрузки/logs

