$map = Array.new(31){[]}

def part_int_sub(n, k, a)
  if (n == 0)
    if a.size == 3
      a.permutation.to_a.uniq.map{|s| $map[a.sum] << s}
    end
  elsif (n == 1)
    r = a + [1]
    if r.size == 3
      # p r.permutation.to_a
      r.permutation.to_a.uniq.map{|s| $map[r.sum] << s}
    end
  elsif (k == 1)
    r = a + [1] * n
    if r.size == 3
      # p r.permutation.to_a
      r.permutation.to_a.uniq.map{|s| $map[r.sum] << s}
    end
  else
    part_int_sub(n-k, k, a + [k]) if n >= k
    part_int_sub(n, k - 1, a)
  end
end

(3..30).each do |i|
  part_int_sub(i,i,[])
end
