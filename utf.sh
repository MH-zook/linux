#/bin/bash
cd ~/python3.18
find ./ -type f -name “*.txt”|while read line;do
echo $line
iconv -f GB2312 -t UTF-8 $line > ${line}.utf8
mv $line ${line}.gb2312
mv ${line}.utf8 $line
done
