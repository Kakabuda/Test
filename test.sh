#!/bin/bash
echo "hello"
string="Justin Bieber"
echo ${#string}
str="life like a chocalate"
echo ${str:4:9}
str="make a change"
echo `expr index "$str" g`

echo "Shell ���ݲ���ʵ����"
echo "��һ������Ϊ��$1"
echo "��������Ϊ��$#"
echo "���ݵĲ�����Ϊһ���ַ�����ʾ��$*"

echo "-- \$* ��ʾ ---"
for i in "$*"; do
     echo $i
done

echo "-- \$@ ��ʾ ---"
for i in "$@"; do
     echo $i
done

if [ -n "$1" ]; then
    echo "������һ������"
else
    echo "û�а�����һ������"
fi
echo "-------------------------"
my_array[0]=A
my_array[1]=B
my_array[2]=C
my_array[3]=D

echo "�����Ԫ��Ϊ��${my_array[*]}"
echo "�����Ԫ��Ϊ��${my_array[@]}"
echo "�ָ���---------------"
j=0
while [ $j -lt ${#my_array[@]} ]
do
    echo ${my_array[$j]}
    let j++
done
echo "-------------------------"
val=`expr 2 + 2`
echo "����֮�ͣ�$val"
echo "-------------------------"
a=10
b=20
val=`expr $a + $b`
echo "����֮�ͣ�$val"
echo "-------------------------"
file="test.sh"
if [ -r $file ]
then
   echo "�ļ��ɶ�"
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
     echo '���������!'
else
     echo '�����������!'
fi
echo "-------------------------"
#while :
#do
#      command
#done
echo "-------------------------"
