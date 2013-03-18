# Exercise 3: Madlibs

Write a function ```choose``` that returns a randomly chosen element of a list.

Set ```adjective``` to be a list of a few adjectives (such as green, hairy, hipster).
Set ```thing``` to be a list of things (such as ball, rug, burger).

Write a function ```noun``` that returns a random noun phrase by choosing an
adjective and a thing: ```noun()``` might return "hairy ball".

Write similar functions so that the following function works:

    intro = () ->
      "#{name()} grabbed the #{noun()} and #{verb()}ed it"

```intro``` could be one of a few functions that generate random sentences.
Write a couple more, and a function that joins 2 or 3 sentences together.
Make yours funny.

Bonus: write a function that scores each story by how funny it is, and finds
the funniest story (from 100 random trials, say).
