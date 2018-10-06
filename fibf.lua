function fib (n)
  local a, b = 0, 1
  for i=0,n do
    a, b = a+b, a
  end
  return a
end

print("fib(46) = ", fib(46))
