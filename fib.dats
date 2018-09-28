#include "share/atspre_staload.hats"

fun fib(n: lint): lint =
	if n <= 1l then 1l else
	fib(n - 1l) + fib(n - 2l)

implement main0() =
	println!(fib(46l))
