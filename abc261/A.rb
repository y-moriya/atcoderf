L1, R1, L2, R2 = gets.split.map &:to_i

if R1 < L2 || R2 < L1
  puts 0
elsif L1 < L2
  if R1 < R2
    puts R1 - L2
  else
    puts R2 - L2
  end
elsif L2 < L1
  if R1 < R2
    puts R1 - L1
  else
    puts R2 - L1
  end
else
  puts 0
end  