a, b, c, x, y = gets.split.map(&:to_i)

if a+b > c/2.0
  p c * [x, y].max * 2
else
  p 1
end