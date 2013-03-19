next = (x) ->
  if x % 2
    3*x + 1
  else
    x/2

tt1 = (x) ->
  c = 0
  while x != 1
    c += 1
    x = next(x)
  c

console.log tt1(1), tt1(6), tt1(7), tt1(27)
