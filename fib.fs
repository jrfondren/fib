: fib ( n -- n' )
   dup 1 <= if drop 1 exit then
   1- dup recurse
   swap 1- recurse + ;

46 fib u. cr bye
