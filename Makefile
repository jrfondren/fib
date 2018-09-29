SHELL=bash
T=for x in 1 2 3; do time 
E=; done; echo
LANGS=ats c cc nim zig
TARGS=$(patsubst %,fib-%,$(LANGS)) $(patsubst %,fibf-%,$(LANGS))

all:: $(TARGS)

clean::; rm -fv fib{,f}-{ats,c,cc,cr,nim,zig} *.o *_dats.c

bench::
	$T ./fib-ats $E
	$T ./fib-c $E
	$T ./fib-cc $E
	$T ./fib-nim $E
	$T ./fib-zig $E

benchf::
	$T ./fibf-ats $E
	$T ./fibf-c $E
	$T ./fibf-cc $E
	$T ./fibf-nim $E
	$T ./fibf-zig $E

forth-bench::
	$T gforth fibf.fs $E
	$T sf fibf.fs $E
	$T iforth include $$PWD/fibf-iforth.fs $E

forth-silly::
	$T gforth fib.fs $E
	$T sf fib.fs $E
	$T iforth include $$PWD/fib.fs $E

%-ats: %.dats
	patscc -O3 -o $@ $<

%-c: %.c
	gcc -O3 -Wall -o $@ $<

%-cc: %.cpp
	g++ -O3 -Wall -o $@ $<

%-zig: %.zig
	zig build-exe $< --output $@ --release-fast

fib-nim: fib.nim
	nim cpp -d:release $<
	mv fib $@

fibf-nim: fibf.nim
	nim cpp -d:release $<
	mv fibf $@
