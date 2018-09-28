: fib ( n -- n' )
   0 1 rot
   0 ?do
      over + swap
   loop drop ;

timer-reset 46 fib . cr .elapsed bye
