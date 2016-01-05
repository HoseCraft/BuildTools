#!/bin/bash

command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }
command -v mvn >/dev/null 2>&1 || { echo >&2 "I require maven but it's not installed.  Aborting."; exit 1; }
command -v jar >/dev/null 2>&1 || { echo >&2 "I require jar (from JDK) but it's not installed.  Aborting."; exit 1; }

echo "Creating Directories and retrieveing sources"
mkdir output
mkdir staging
cd staging
mkdir src
cd ..
cp pom.xml staging/pom.xml
java -jar fernflower.jar minecraft-server.jar decompiled
git clone https://github.com/HoseCraft/HoseCraft.git
cd staging/src; jar xf ../../decompiled/minecraft-server.jar
./apply-patches.sh
./compile.sh