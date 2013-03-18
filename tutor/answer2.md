# Answer for Exercise 2

    count = (v, x) ->
      c=0
      for char in x
        if char in v
          c += 1
      c 

    pievowel = (word) ->
      vowel = count 'aeiou', word
      piechart 200,200,100,
        [vowel,word.length-vowel],legend:['vowel','consonant'] 
