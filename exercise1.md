# Exercise simplepie

In a new CoffeePlay session type ```Studio Raphael``` to open the drawing
area. Then play around with ```piechart 200, 200, 150, [1, 1, 2, 3]```.
Use ```clear()``` to empty the drawing area.

Define ```simplepie``` to be a function that takes a single list as an
argument and draws the pie chart. ```simplepie``` should choose a fixed
position and size for the pie chart. I've started it already, you just
need to fill in the blanks:

    simplepie = (listArg) ->
      piechart __, __, __, __

    # test with:
    simplepie [1, 2, 9]

Legends can be added to a pie chart like this (note it is smaller than
before, in order to fit the legend on):

    piechart 200,200,100, [2,5,4], legend: ['otter', 'marmot', 'mongoose']

Write a function ```legendpie``` that takes an object (with keys and
values), and draws a pie chart where the legend is taken from the keys of
the object, and the slice sizes are taken from the values.

    legendpie = (obj) ->
      ks = (__ for k,v in __)
      vs = ____
      piechart ____

Test with ```legendpie { grass: 94, sedge: 6}```
