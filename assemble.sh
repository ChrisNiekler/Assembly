#!/bin/bash
error="Please provide a file with the ending .asm\nFor Example: ./assemble.sh example.asm"
if [ ! -z "$1" ]
	then
		NAME=$1
		echo "You provided a wrong filename"
		if [ ${NAME: -4} == .asm ]
		then
			NAME=${NAME::-4}
			echo "Your file $NAME will be Assambled"
			nasm -f elf $NAME.asm
			ld -m elf_i386 -s -o $NAME $NAME.o
			rm $NAME.o
		else
			echo -e $error
		fi
	else
		echo -e $error

fi
