N, K = gets.split.map &:to_i
A = gets.split.map &:to_i
X = []
N.times do
  X << gets.split.map &:to_i
end

for i in 0...N
  for j in (i+1)...N
    next if i == j
    v1 = Vector.new(X[i])
    v2 = Vector.new(X[j])
  end
end