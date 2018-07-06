#!/bin/bash
LINE_COUNT=$(wc -l < ytls)
for (( c=1; c<=$LINE_COUNT; c++))
  do
    ID=$(sed $c'q;d' ytls)
    youtube-dl -x $ID --audio-format mp3
    echo "$ID Downloaded"
done
echo "Everything Done"
