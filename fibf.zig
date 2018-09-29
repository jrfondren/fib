const warn = @import("std").debug.warn;

fn fib(n: u32) u32 {
  var a: u32 = 0;
  var b: u32 = 1;
  var i: u32 = 0;
  while (i <= n) {
    var c: u32 = a;
    a += b;
    b = c;
    i += 1;
  }
  return a;
}

pub fn main() void {
  warn("fib(46) = {}", fib(46));
}
