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

Write a function ```legendpie``` that takes two arguments: the first is a
list of pie slice sizes (like ```simplepie```) and the second is a list of
legend labels.  It should draw a pie chart with a legend.

    legendpie = (vs, ls) ->
      ____

Bonus: ```ks = (k for k,v of obj)``` sets ```ks``` to be the list of keys
of the object ```obj```. Write a function ```objpie``` that takes a single
argument and draws a pie chart where the legend is taken from the keys of
the argument, and the slice sizes are taken from the values.

Test with ```objpie { grass: 94, sedge: 6}```
