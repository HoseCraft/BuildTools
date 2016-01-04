echo "Attempting to apply patches"
cd staging/src
for file in ../../HoseCraft/Patches/*.diff
do
 # do something on "$file"
 git apply "../../HoseCraft/Patches/$file"
done
echo "Patches Applied?"