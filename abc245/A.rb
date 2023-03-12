require 'time'
A, B, C, D = gets.split.map &:to_i
t = Time.new(2000,1,1,A,B)
a = Time.new(2000,1,1,C,D,1)
puts t < a ? :Takahashi: :Aoki