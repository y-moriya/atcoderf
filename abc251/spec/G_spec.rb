RSpec.describe 'test' do
  it 'test with "5\n-2 -3\n0 -2\n1 0\n0 2\n-2 1\n2\n0 1\n1 0\n6\n0 0\n1 0\n0 1\n1 1\n-1 -1\n-1 -2\n"' do
    io = IO.popen("ruby abc251/G.rb", "w+")
    io.puts("5\n-2 -3\n0 -2\n1 0\n0 2\n-2 1\n2\n0 1\n1 0\n6\n0 0\n1 0\n0 1\n1 1\n-1 -1\n-1 -2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\nYes\nYes\nYes\nNo\n")
  end

  it 'test with "10\n45 100\n-60 98\n-95 62\n-95 28\n-78 -41\n-54 -92\n-8 -99\n87 -94\n98 23\n87 91\n5\n-57 -40\n-21 -67\n25 39\n-30 25\n39 -20\n16\n4 5\n-34 -8\n-63 53\n78 84\n19 -16\n64 9\n-13 7\n13 53\n-20 4\n2 -7\n3 18\n-12 10\n-69 -93\n2 9\n27 64\n-92 -100\n"' do
    io = IO.popen("ruby abc251/G.rb", "w+")
    io.puts("10\n45 100\n-60 98\n-95 62\n-95 28\n-78 -41\n-54 -92\n-8 -99\n87 -94\n98 23\n87 91\n5\n-57 -40\n-21 -67\n25 39\n-30 25\n39 -20\n16\n4 5\n-34 -8\n-63 53\n78 84\n19 -16\n64 9\n-13 7\n13 53\n-20 4\n2 -7\n3 18\n-12 10\n-69 -93\n2 9\n27 64\n-92 -100\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nYes\nNo\nNo\nYes\nNo\nYes\nNo\nYes\nYes\nYes\nYes\nNo\nYes\nNo\nNo\n")
  end

end
