N, X = gets.split.map &:to_i

result = []
ab = []
ab[0] = gets.split.map &:to_i
def sum(ab, i)
  ab[0..i].map{|t| t[0] + t[1]}.inject(:+)
end
result[0] = sum(ab, 0) + ab[0][1] * (X - 1)

for i in 1...N
  ab[i] = gets.split.map &:to_i
  result[i] = sum(ab, i) + ab[i][1] * (X - i - 1)
end

puts result.min