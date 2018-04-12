#!/bin/bash
## user;salt:hash
#berta;xohth4dew5p8:14146888a9cb5e924987691876fb4252
#PW="1234"
salt="xohth4dew5p8"
#hash=$(printf '%s' $PW$salt | md5sum | cut -d ' ' -f 1)
hash=14146888a9cb5e924987691876fb4252
for word in $(< ./detsch.txt); do
length=$(echo $word | wc -m)
  if [ $length -lt 8 ] ; then
  echo 1
    word=$(echo $word | sed 's/\([A-Z]\)/\L\1/g')
    var=$(printf '%s' salt$word$ | md5sum | cut -d ' ' -f 1)
    if [ $var = $hash ] ; then
      echo -e "Passwort gefunden: $word"
    fi
  fi
done
