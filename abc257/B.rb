N, K, Q = gets.split.map &:to_i
A = gets.split.map &:to_i
L = gets.split.map &:to_i

L.each do |l|
  koma = A[l-1]
  next if koma == N
  r = koma + 1
  next if A.include?(r)
  A[l-1] = r
end

puts A.join(' ')