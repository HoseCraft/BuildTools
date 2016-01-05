#!/bin/bash

echo "Attempting to apply patches"
cd staging/src
for file in ../../HoseCraft/Patches/*.*
do
    git apply $file
done
echo "Patches Applied?"