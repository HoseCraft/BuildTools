#!/bin/bash

cd staging/
mvn package
cp target/*.jar ../output