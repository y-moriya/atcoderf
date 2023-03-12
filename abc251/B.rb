N, W = gets.split.map &:to_i
A = gets.split.map &:to_i

a = A.select{|i| i <= W}
r = []
(0...a.size).each do |i|
  (i+1...a.size).each do |j|
    if a[i] + a[j] <= W
      r << a[i] + a[j]
    else
      next
    end
    (j+1...a.size).each do |k|
      if a[i] + a[j] + a[k] <= W
        r << a[i] + a[j] + a[k]
      end
    end
  end
end

puts (a + r).uniq.size