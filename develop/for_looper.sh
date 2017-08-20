#!/bin/bash

names='a b c'
for name in $names
  do
    cd ${ccs2}'develop'
    echo $name
    cd dir_${name}
    echo "dir =" $(pwd)
done
echo All done
