# cheatsheet

# scalar datatypes

    76 -2.6 .6e3 0o600 0x4a # numbers
    'hello Dave' "I can't do that Dave" # strings
    """Dave,
    I'm disappointed you didn't say "hello".""" # multiline
    null # the null value
    undefined Infinity NaN # funny little things

# Numbers (all 64-bit IEEE floats)

    + - * / % # The usual arithmetic operators (from C)
    Math.pow(x, y) # x raised to power y.  Like x**y in Fortran.

    & | ^ # bitwise AND OR XOR (32-bit signed)
    << >> >>> # bitwise shifts from C (and Java)
    ~ # bitwise NOT

    # Most of the bitwise stuff is archaic, but it works.

# True and False (Boolean literals)

    true false
    yes no
    on off

# Comparisons

    == != is isnt # equality (like === in JavaScript)
    < <= >= > 
    not !

    # It's fun to chain them (like BCPL, and Python):
    'cat' < 'dog' < 'owl'

    && || # like C, JavaScript
    and or # like Python

# Existential operator.

# if

    if candidate > max
      max = candidate
    # When on one line the "then" keyword is required:
    if candidate > max then max = candidate
    # There is no ternary operator, just use if:
    step = if direction is 'up' then +1 else -1
    # The "if" can come after:
    y = 1 if x <= 1

# unless

Just like "if" but with the condition inverted:

    console.log "starting..." unless quiet

# indefinite loops

    while d < -180
      d += 360
    while d >= 180
      d -= 360
    # Can aso be on one line using the "then" keyword:
    while x/2 != 0 then x /= 2


      

# functions

    afun = (x) ->
      if x % 2 == 0
        x / 2
      else
        x * 3 + 1

    gozinto = (x, y) ->
      if y % x == 0
        return true
      else
        return false

    gozinto = (x, y) -> ! (y % x)

    sum = (numbers...) ->
      s = 0
      for x in numbers
        s += x
      s

Arrays (aka lists)

    [2, 3, 5, 7] # with square brackets
    l = 'foo' # without square brackets
      'bar'
      'baz'
    l.length
    l[0]    # the first item in the array
    l[-1]   # generally, undefined; not like Python
    l[1..3] # a 3 element slice
    l[..2]  # first 3 elements
    l[-2..] # last two elements (but l[-2] doesn't work)
    l.push 'zon' # push item onto end of array
    l.pop() # pop (right hand) item and remove it

    [1..10] # an array from 1 to 10

    for x in [1..10]     # array of squares
      x*x
    x*x for x in [1..10] # one liner: same array of squares

    # More like lists from Python, not really like
    # arrays from Fortran or R.


Objects (aka tables, dicts, hashes)

    { name: "CoffeeScript",
      score: 9 }
    # or without curly brackets:
    name: "CoffeeScript"
    score: 9
    # Iteration:
    for key of table:
      key

Assignment

    a = 7 # simple assignment
    a += 1 # assignment operators (like C, Python, JavaScript)

    # Destructuring assignment:
    [a, b] = ['alice', 'bob']
    [p, q] = [q, p] # swaps p and q, no temporary variable required

    # Destructuring assignment with objects:
    options =
      fill: 'blue'
      stroke: yes
    {stroke} = options  # same as stroke = options.stroke
