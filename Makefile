all: clean compile

compile:
	#helloworld
	nasm -f elf helloworld.asm
	ld -m elf_i386 -s -o helloworld helloworld.o
	#input
	nasm -f elf input.asm
	ld -m elf_i386 -s -o input input.o
	#exercise1
	nasm -f elf exercise1.asm
	gcc -o exercise1 exercise1.o
	#twoToThePowerOf4
	nasm -f elf twoToThePowerOf4.asm
	gcc -o twoToThePowerOf4 twoToThePowerOf4.o
	# v = mark, y = copy , p/P = paste before / after
	#delete unnessecary files
	rm -f *.o
clean:
	# delete all output and binary files
	rm -f *.o
	rm -f helloworld
	rm -f input
	rm -f exercise1
	rm -f twoToThePowerOf4
