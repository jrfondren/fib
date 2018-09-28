proc fib(n: uint64): uint64 =
    var a: uint64 = 0
    var b: uint64 = 1
    for i in 0..n:
        (a, b) = (a+b, a)
    return a

echo fib(46)
