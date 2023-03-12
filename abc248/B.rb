A, B, K = gets.split.map &:to_i

a = A
r = 1

if B <= A
  puts 0
  return
end

while (a * K < B)
  a *= K
  r += 1
end
puts r