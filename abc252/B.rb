N, K = gets.split.map &:to_i
A = gets.split.map &:to_i
B = gets.split.map{|b| b.to_i - 1}

result = false
max = A.max
A.each_with_index do |a, i|
  next if a < max
  result = true if B.include?(i)
end

puts result ? :Yes: :No