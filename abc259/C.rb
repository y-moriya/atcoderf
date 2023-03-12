S = gets.chomp
T = gets.chomp

def minimize(str)
  str.gsub(/(.)\1+/, '\1\1')
end

s = minimize(S)
t = minimize(T)

if S.size <= T.size && s == t
  puts :Yes
else
  puts :No
end