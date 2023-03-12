x1, y1 = gets.split
x2, y2 = gets.split
x3, y3 = gets.split

x_a = [x1, x2, x3]
x = x_a.min_by{|v| x_a.count(v)}

y_a = [y1, y2, y3]
y = y_a.min_by{|v| y_a.count(v)}

puts [x, y].join(' ')