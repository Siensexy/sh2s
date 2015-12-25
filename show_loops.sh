#!/bin/sh
function for_loop {
echo 'for var in $(seq 1 100)'
echo 'do'
echo '        echo $var'
echo 'done'
}
function while_loop {
echo 'var=10'
echo 'while [ $var -lt 100 ];'
echo 'do '
echo '	echo $var'
echo '	var=$(($var+1))'
echo 'done'
}

while [ 1 ];
do
	echo "Please input [1|2|3] 1: for_loop 2: while_loop 3: exit"
	read var
	case $var in 
		1) for_loop;;
		2) while_loop;;
		3) exit 0;;
		*) echo "input error!!!";;
	esac
done
