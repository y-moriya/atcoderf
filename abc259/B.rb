require 'matrix'
include Math

a, b, d = gets.split.map &:to_i

rad = d * Math::PI / 180.0
v = Vector[a, b]
m = Matrix[[Math.cos(rad), -Math.sin(rad)], [Math.sin(rad), Math.cos(rad)]]
r = m * v
puts "#{r[0]} #{r[1]}"