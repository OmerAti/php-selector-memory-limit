#!/bin/bash
# JRodix.Com Internet Hizmetleri Omer ATABER - OmerAti
FILE="/etc/cl.selector/php.conf"
OLD_VALUE="64M,128M,192M,256M,368M,512M"
NEW_VALUE="64M,128M,192M,256M,368M,512M,1024M,2048M"
if [[ -f $FILE ]]; then
    if grep -q "1024M" "$FILE" && grep -q "2048M" "$FILE"; then
        echo "Memory limit zaten mevcut: '1024M' ve '2048M'."
    else
        sed -i "s/$OLD_VALUE/$NEW_VALUE/g" "$FILE"
        echo "Degisiklik basariyla uygulandi: '$OLD_VALUE' -> '$NEW_VALUE'"
    fi
else
    echo "Php Selector Bulunamadi: $FILE"
fi
