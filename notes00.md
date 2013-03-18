# Notes leading up to exercise0

Show intro00.md
Introduce yourself and helpers, and the twitter hashtags.
Invite anyone to ask questions at any time.

go to http://drj11.github.com/coffeeplay

Explain input, output, error messages. For example, the difference
between:

    "hello"
    hello
    "hello

Explain what a hack coffeeplay is, and please report any bugs. We might
even fix them live.

show the "exercise 0" function call, and explain it (no brackets!).

go to exercise0.md and leave it showing.


# Notes leading up to exercise1

Handle any questions, comments from exercise0. Does CoffeePlay always
respond with what you input? What does it respond with?

How to call a function:

    Date()
    Math.random()
    Math.random()*6
    Math.floor(Math.random()*6)
    Math.floor Math.random()*6 

Make an Array (aka list):

    [2, 3, 5]
    [1..10]
    a = [1, 'two', null, 2.2]

Array's are indexed using square brackets, and have a length property:

    a[1]
    a.length

Calling a function with multiple arguments:

    Math.max 2,5,3

If we want to nest function calls we sometimes have to be careful with
our brackets:

    Math.max Math.min 1, x, 0 # wrong
    Math.max Math.min(1, x), 0 # right
    Math.max(Math.min 1, x), 0 # right, but obscure; not recommended style.
    Math.max 0, Math.min 1, x

(In fact, we quite often have to be careful with our brackets)

Defining our own functions:

    square = (x) -> x*x
    checkPassword = (x) ->
      if x == "secret"
        true
      else
        false
    rndRange = (base, limit) ->
      s = limit - base
      base + Math.random() * s

Note that the thing returned from the function is the last expression of the function
(unless we use "return").

Very brief preview for those planning to do the bonus section of the exercise:
This is a key,value table:

    o = {name: "pear", flavour: 3}

In CoffeeScript, it's called an object.

Introduce exercise 1:

    exercise 1

# Notes up to exercise 2

Handle any questions/comments from Exercise 1.

Objects (key,value pairs, like dicts/hashes/associate arrays from other languages):

    o = { food: 'eggs', count: 6 } # Note what CoffeePlay outputs

Hipsters don't like squiggly brackets (or commas):
    o =
      food: 'eggs'
      count: 6
    # Again, note what CoffeePlay outputs

With Arrays you need the square brackets, but can use newline instead of comma:
    l = [
      "green eggs"
      "ham"
    ]

Access the properties of an object:

    o.name
    Math.max

And the elements of an Array:
    l[0]

Iteration:
with arrays use "in", with objects use "of":
    
    aCopy = (x for x in l)
    lengths = (w.length for w in l)

    keys = (k for k,v of o)
    values = (v for k,v of o)

You can also use a for loop with a body which is like
a more conventional loop:

    for k,v of o
      console.log "key", k, "value", v

Strings

    "Hello"
    'World'
    """long strings can "contain" quotes"""
    'Don\'t usually bother with all that backslash stuff'
    s = "Answer is #{7*6}"

Strings are a bit like Arrays:

    s[0]
    s.length
    cs = (c for c in s)
    explode = (s) -> (c for c in s)  # ML ftw!

(if someone asks about ranges, show, but remind that they're
inclusive, not like Python)

Tests and "in"

Obviously CoffeeScript has if:

    if s < 'zoo'
      console.log "smaller"
and it has the usual battery of conditions.
    if x < 0 or x > 10
      "out of range"
one-liners:
    error = "out of range" if x < 0 or x > 10
    if x < 0 then x = -x
    
For strings and lists can use "in" to test for membership:

    'a' in s
    'A' in s
    'Ans' in s # Doesn't do substring "in" just single character
    if 'ham' in l then console.log 'i \u2665 ham'

The next exercise has a function that performs a calculation, so
you need to remember that the result of a function is the last
expression in the function.

Show exercise 2

    exercise 2

# Notes leading up to Coffee Break

Questions and comments from exercise 2

Looking forward to more on strings, the use of CoffeeScript in the wild,
and a look at some real CoffeeScript: the CoffeeScript compiler itself.

Minute cards. Just before the break fill in a minute card: one thing
you've learned, and one thing you're confused about. It's totally fine to
be anonymous. Or not.

For filling a few minutes:

peer to peer concept map building.

comparative note taking.
