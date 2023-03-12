N = gets.to_i
A = gets.split.map &:to_i
b = [0,0,0,0]
p = 0
A.each do |a|
  b[0] = 1
  3.downto(0) do |i|
    next if b[i] == 0
    if i + a > 3
      p += 1
    else
      b[i+a] = 1
    end
    b[i] = 0
  end
end

puts p