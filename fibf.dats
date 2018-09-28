#include "share/atspre_staload.hats"

fun fib(n: lint): lint = loop(n, 0l, 1l) where {
	fun loop(i: lint, a: lint, b: lint): lint =
		if i < 0l then a
		else loop(i-1l, a+b, a)
}

implement main0() =
	println!(fib(46l))
