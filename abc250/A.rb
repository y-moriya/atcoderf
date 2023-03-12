H, W = gets.split.map &:to_i
R, C = gets.split.map &:to_i

r = 4
r -= 1 if R == 1
r -= 1 if R == H
r -= 1 if C == 1
r -= 1 if C == W

puts r