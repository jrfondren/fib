: fib ( n -- n' )
   0 1 rot
   -1 ?do
      over + swap
   loop drop ;

46 fib u. cr bye
