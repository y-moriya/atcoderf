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

# -----------------------------------------------------------

h1, h2, h3, w1, w2, w3 = gets.split.map &:to_i

# hw = {'h1' => h1, 'h2' => h2, 'h3' => h3, 'w1' => w1, 'w2' => w2, 'w3' => w3 }
# m = [0,0,0,0,0,0,0,0,0]

# h_maps = {'h1' => $map[h1],'h2' => $map[h2],'h3' => $map[h3]}
# w_maps = {'w1' => $map[w1],'w2' => $map[w2],'w3' => $map[w3]}

result = []

$map[h1].each do |h1m|
  $map[w1].each do |w1m|
    next if h1m[0] != w1m[0]
    $map[h2].each do |h2m|
      next if h2m[0] != w1m[1]
      $map[w2].each do |w2m|
        next if w2m[0] != h1m[1] || w2m[1] != h2m[1]
        $map[h3].each do |h3m|
          next if h3m[0] != w1m[2] || h3m[1] != w2m[2]
          w3m = [h1m[2], h2m[2], h3m[2]]
          if $map[w3].include?(w3m)
            result << [h1m, h2m, h3m]
          end
        end
      end
    end
  end
end

puts result.uniq.size