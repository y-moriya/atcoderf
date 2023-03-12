R, C = gets.split.map &:to_i
A11, A12 = gets.split.map &:to_i
A21, A22 = gets.split.map &:to_i

A = [[A11, A12], [A21, A22]]

puts A[R-1][C-1]