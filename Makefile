.PHONY: all clean

ASM_FILES := $(wildcard *.asm)
EXES:= $(patsubst %.asm,%,$(ASM_FILES))

# $(info ASM_FILES=$(ASM_FILES))
# $(info EXES=$(EXES))

all: $(EXES)

$(EXES) : % : %.o
	ld $< -o $@

%.o: %.asm header.inc footer.inc
	nasm -f elf64 $<
	#strip --strip-symbol='_start.jump*' --wildcard $@

clean:
	rm -f *.o
	rm -f $(EXES)
