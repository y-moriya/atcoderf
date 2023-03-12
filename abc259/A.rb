N, M, X, T, D = gets.split.map &:to_i

min = X * D
base = T - min
height = Array.new(N){base}

for i in 1...X
  height[i] += i*D
end

for i in X..N
  height[i] = T
end

puts height[M]