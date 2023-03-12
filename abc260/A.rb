S = gets.chomp
S.chars.each do |c|
  if S.count(c) == 1
    puts c
    return
  end
end

puts -1