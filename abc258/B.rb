N = gets.to_i
A = []
max = 1
N.times do
  a = gets.chomp.chars.map &:to_i
  max = a.max if max < a.max
  A << a
end

max_ij = []

for i in 0...N
  for j in 0...N
    if A[i][j] == max
      max_ij << [i, j]
    end
  end
end

def get_next(n, x, y, to_x, to_y)
  i = to_y == 'up' ? x - 1 : to_y == 'down' ? x + 1 : x
  j = to_x == 'left' ? y - 1 : to_x == 'right' ? y + 1 : y
  i = 0 if i == n
  j = 0 if j == n
  [i, j]
end

result = []

lr = ['left', 'mid', 'right']
ud = ['up', 'mid', 'down']

max_ij.each do |ij|
  for i in 0..2
    for j in 0..2
      next if i == 1 && j == 1
      x, y = ij
      s = max.to_s
      (N-1).times do
        x, y = get_next(N, x, y, lr[i], ud[j])
        s += A[x][y].to_s
      end
      result << s
    end
  end
end

puts result.map(&:to_i).max
