all: cat

%.o: %.a65
	ca65 -t apple2 $<

%.bin: %.o
	ld65 -C apple2-asm.cfg --start-addr 2048 $< -o $@

%: %.bin
	bash addheader.sh $< 0800
	mv $@ ../Transfer/

.PHONY: clean
clean:
	rm -f *.o *.bin
