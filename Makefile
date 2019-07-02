all: clean compile

compile:
	#helloworld
	nasm -f elf helloworld.asm
	ld -m elf_i386 -s -o helloworld helloworld.o
	#input
	nasm -f elf input.asm
	ld -m elf_i386 -s -o input input.o
	#stars
	nasm -f elf stars.asm
	ld -m elf_i386 -s -o stars stars.o
	#hellofive
	nasm -f elf hellofive.asm
	ld -m elf_i386 -s -o hellofive hellofive.o
		
	# v = mark, y = copy , p/P = paste before / after
	#delete unnessecary files
	rm -f *.o
clean:
	# delete all output and binary files
	rm -f *.o
	rm -f helloworld
	rm -f input
	rm -f stars
	rm -f hellofive
