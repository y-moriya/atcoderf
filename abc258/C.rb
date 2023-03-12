N, Q = gets.split.map &:to_i
S = gets.chomp
s = S * 2

cursor = N
Q.times do
  q = gets.split.map &:to_i
  if q[0] == 1
    cursor = cursor - q[1]
    cursor += N if cursor < 0
  else
    puts s[cursor+q[1]-1]
  end
end
