#!/bin/bash
OLDIFS=$IFS
for i in $(cat ficheroCarga) ; do
wget $i | base64 -d 
done
IFS=$OLDIFS

for i in $(ls -C1); do
if  [  $(echo $i |awk -F . '{print $NF}') = "jpg" ] ; then
base64 $i > $( basename $i ).b64
fi
done


