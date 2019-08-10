all: first.com
    

first.com: first.asm
	nasm -f bin first.asm -o first.com
