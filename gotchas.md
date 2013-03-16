'foo' in obj vs 'foo' of obj

    x+2 vs x +2  # see FAQ!

# defines empty function, then has useless literal:
foo = ->
[2, 4, 6]

perhaps you meant:
foo = ->
  [2, 4, 6]

Forgetting to put ```()``` when calling a function with no arguments:

    $('#mydiv').empty

Forgetting to define a function using =:

    mad (a, x, y) -> a + x*y

Normally this results in an error like "mad is not defined", but the code
is syntactically valid and has a meaning: it passes to the function
```mad``` a single argument which is the anonymous function. This
fails when ```mad``` is not defined, but if ```mad``` is already defined
(maybe you were intending to _redefine_ it) then it will run and may even
run with error (but probably not do what you wanted).

Assigning a list made by a for loop to a variable needs a bit of care:

    squares = x*x for x in [1..3]  # wrong!
    squares = (x*x for x in [1..3])  # right.
