#!/bin/bash
rm -r dir_1
mkdir dir_1
cd dir_1
mkdir inner_dir_1
pwd
touch tf_1.txt
cat > tf_2.txt <<< '- the first 1
- the second 2
- the third 3 '
cd inner_dir_1
cat > tf_3.txt <<< stroki
cat >> tf_3.txt <<< '"the second 2"'
cat >> tf_3.txt <<< '"the sec 2"'
cat >> /d/dir_1/tf_2.txt <<< '"the sec 3"'
cat >> tf_3.txt <<< '"the SeCoNd 2"'
cat >> /d/dir_1/tf_2.txt <<< '"the seConD 2"'
cat >>tf_4.txt <<< '1 line
2 line
3 line
4 line
5 line
6 line
7 line
8 line
9 line
10 line
11 line
12 line
13 line
14 line
15 line'
cat > tF_5.txt <<< '1 line
2 line
3 line
4 line
5 line
6 line
7 line
8 line
9 line
10 line
11 line
12 line
13 line'
ls -la
cd ..
cat /d/dir_1/inner_dir_1/tf_3.txt
find $pwd -name tf_4.txt
echo -n > /d/dir_1/inner_dir_1/tf_4.txt
# truncate -s 0 /d/dir_1/inner_dir_1/tf_4.txt
# cat > /d/dir_1/inner_dir_1/tf_4.txt <<<''
find . -name "tf*" | xargs realpath
find . -type f -iname "tf*"
grep 'sec' *.*
grep -i 'sec' *.*
grep -w 'sec' *.*
grep -iw 'sec' *.*
grep 'second' *.*
grep -i 'second' *.*
grep -r 'second' ./*/
find . -name "*.txt" | xargs grep 'second'
grep -rl 'second' *.*| xargs realpath
grep -rv 'second'
grep -Lrw 'second' | xargs realpath
tail -n 4 tf_2.txt
head -n 4 inner_dir_1/tF_5.txt
mkdir papka && cat >> tf_6.txt <<<'1 2 3'
grep -lr 'sec' | xargs mv -t papka/
grep -lr 'sec' | xargs cp -t .
grep -r 'sec' | tee tfsec.txt
grep -rl 'sec' | xargs rm -f
echo 'Goog job!!'