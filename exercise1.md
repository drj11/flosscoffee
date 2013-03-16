# Exercise simplepie

The function call

    piechart 200, 200, 150, [1, 1, 2, 3]

draws a piechart of a reasonable size (150 pixels radius) in
the middle of the drawing area (x=200, y=200). Let's fix the
position and size, and create a function called ```simplepie``` that
takes a single list as an argument, and draws the piechart.
```simplepie``` should always draw the chart at x=200, y=200 and
of size 150 pixels radius.

I've started it already, you just need to fill in the blanks:

    simplepie = (listArg) ->
      piechart __, __, __, __

If you've written ```simplepie``` correctly, you should be able
to go:

    simplepie [1, 2, 9]

to get a piechart.

