#!/data/data/com.termux/files/usr/bin/sh

fileName=$1
className=${fileName%.class*}

# echo $className

dx --dex --output $className.dex $className.class

dalvikvm -cp $className.dex $className


