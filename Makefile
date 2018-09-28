SHELL=bash
T=for x in 1 2 3; do time 
E=; done; echo

all:: fib-ats fib-c fib-cc fib-nim fibf-ats fibf-c fibf-cc fibf-nim

clean::; rm -fv fib{,f}-{ats,c,cc,cr,nim} *.o *_dats.c

bench::
	$T ./fib-ats $E
	$T ./fib-c $E
	$T ./fib-cc $E
	$T ./fib-nim $E

benchf::
	$T ./fibf-ats $E
	$T ./fibf-c $E
	$T ./fibf-cc $E
	$T ./fibf-nim $E

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

fib-nim: fib.nim
	nim cpp -d:release $<
	mv fib $@

fibf-nim: fibf.nim
	nim cpp -d:release $<
	mv fibf $@
