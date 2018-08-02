#!/bin/bash
echo "hello"
string="Justin Bieber"
echo ${#string}
str="life like a chocalate"
echo ${str:4:9}
str="make a change"
echo `expr index "$str" g`

echo "Shell 传递参数实例！"
echo "第一个参数为：$1"
echo "参数个数为：$#"
echo "传递的参数作为一个字符串显示：$*"

echo "-- \$* 演示 ---"
for i in "$*"; do
     echo $i
done

echo "-- \$@ 演示 ---"
for i in "$@"; do
     echo $i
done

if [ -n "$1" ]; then
    echo "包含第一个参数"
else
    echo "没有包含第一个参数"
fi
echo "-------------------------"
my_array[0]=A
my_array[1]=B
my_array[2]=C
my_array[3]=D

echo "数组的元素为：${my_array[*]}"
echo "数组的元素为：${my_array[@]}"
echo "分割线---------------"
j=0
while [ $j -lt ${#my_array[@]} ]
do
    echo ${my_array[$j]}
    let j++
done
echo "-------------------------"
val=`expr 2 + 2`
echo "两数之和：$val"
echo "-------------------------"
a=10
b=20
val=`expr $a + $b`
echo "两数之和：$val"
echo "-------------------------"
file="test.sh"
if [ -r $file ]
then
   echo "文件可读"
fi
echo "-------------------------"
read name
#echo "$name It is a test"
#echo "-------------------------"
echo -e "OK! \n"
echo "It is a test"
echo "-------------------------"
echo "It is a test" > myfile
echo "-------------------------"
printf "This is \n a \t small \\ d\0dddog"
echo "-------------------------"
num1=100
num2=200
if test $[num1] -eq $[num2]
then
     echo '两个数相等!'
else
     echo '两个数不相等!'
fi
echo "-------------------------"
#while :
#do
#      command
#done
echo "-------------------------"
