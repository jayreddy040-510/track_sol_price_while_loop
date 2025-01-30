#!/bin/bash

while true
do
    num=$(curl -s https://api.diadata.org/v1/assetQuotation/Solana/0x0000000000000000000000000000000000000000 | jq '.Price')
    rounded_num=$(awk -v num="$num" 'BEGIN{printf "%.2f", num}')
    
    if [ $(echo "$rounded_num <= $1" | bc) -eq 1 ]; then
        say "Price is $rounded_num"
    fi
    
    if [ $(echo "$rounded_num >= $2" | bc) -eq 1 ]; then
        say "Price is $rounded_num"
    fi
    
    sleep 60
done