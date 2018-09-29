const warn = @import("std").debug.warn;

fn fib(n: u32) u32 {
  if (n <= 1) return 1;
  return fib(n - 1) + fib(n - 2);
}

pub fn main() void {
  warn("fib(46) = {}", fib(46));
}
