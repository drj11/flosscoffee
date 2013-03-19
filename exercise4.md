# Exercise 4: Numbers

Let ```next``` be a function that takes a whole number *x* and
returns: ```x/2``` if x is even; ```3*x``` is x is odd.

Define ```next``` in CoffeeScript.

Observe: ```next(1) == 4; next(4) == 2; next(2) == 1```

Define a function ```TimeTo1``` that takes an argument *x* and
repeatedly performs ```x = next(x)``` until x is 1. Count how
many steps it takes, and return that count.

Try ```TimeTo1``` for a few smallish values.

What is ```TimeTo1(6)```, ```TimeTo1(7)```, ```TimeTo1(27)```?

Modify ```TimeTo1``` so that it keeps track of the maximum value
that *x* obtained during the iteration, and return the count
and the maximum value together, as a list of 2 items.

What is the maximum value obtained by ```TimeTo1(27)```?

Bonus: After ```Studio Raphael```, ```barchart 50, 50, 300, 300, [1,3,2,4]``` draws a bar chart.
Make a list of the result of calling ```TimeTo1``` on the first 20 (or so) whole numbers. Either
plot the maximum value obtained, or the length of the sequence.
