# Notes leading up to exercise0

Show intro00.md
Introduce yourself and helpers, and the twitter hashtags.
Invite anyone to ask questions at any time.

go to http://drj11.github.com/coffeeplay

Explain input, output, error messages. For example, the different
between:

    "hello"
    hello
    "hello

Explain what a hack coffeeplay is, and please report any bugs. We might
even fix them live.

show the "exercise 0" function call, and explain it (no brackets!).

go to exercise0.md and leave it showing.


# Notes leading up to exercise1

Handle any questions, comments from exercise0

How to call a function:

    Date()
    Math.random()
    Math.random()*6
    Math.floor(Math.random()*6)
    Math.floor Math.random()*6 

Make an Array (aka list):

    [2, 3, 5]
    [1..10]
    [1, 'two', null, 2.2]

Array's have a length property:

    a = [6..9]
    a.length

And are indexed using square brackets:

    a[1]

Indexing off the end of an Array gives undefined:

    a[4]

Which is itself a value just like any other:

    undefined

Calling a function with multiple arguments:

    Math.max 2,5,3

If we want to nest function calls we sometimes have to be careful with
our brackets:

    Math.max Math.min 1, x, 0 # wrong
    Math.max Math.min(1, x), 0 # right
    Math.max(Math.min 1, x), 0 # right, but obscure; not recommended style.
    Math.max 0, Math.min 1, x

(In fact, we quite often have to be careful with our brackets)
