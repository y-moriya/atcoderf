N = gets.to_i

memo = {}

each_cons = ->(ary) {
  (ary.size < 2) ? [] : [ary[0] + ary[1]] + each_cons.(ary.drop(1))
}
pascal = ->(n) {
  return memo[n] if memo.has_key?(n)
  memo[n] = n.zero? ? [1] : [1] + each_cons.(pascal.(n - 1)) + [1]
}


N.times {|i| puts pascal.(i).join(" ")}