RSpec.describe 'test' do
  it 'test with "6 3 4\n2 3\n5 2\n1 1\n"' do
    io = IO.popen("ruby abc251/Ex.rb", "w+")
    io.puts("6 3 4\n2 3\n5 2\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1 4 3 2\n")
  end

  it 'test with "     3\n    5 5\n   5 0 5\n  1 4 3 2\n 4 4 0 3 6\n2 2 2 5 5 1\n"' do
    io = IO.popen("ruby abc251/Ex.rb", "w+")
    io.puts("     3\n    5 5\n   5 0 5\n  1 4 3 2\n 4 4 0 3 6\n2 2 2 5 5 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1 1 1\n6 1\n")
  end

  it 'test with "6\n"' do
    io = IO.popen("ruby abc251/Ex.rb", "w+")
    io.puts("6\n")
    io.close_write
    expect(io.readlines.join).to eq("111111111 9 9\n0 1\n1 10\n2 100\n3 1000\n4 10000\n5 100000\n6 1000000\n0 10000000\n1 100000000\n")
  end

  it 'test with "1 0 4 2 5 5 5 6 3\n"' do
    io = IO.popen("ruby abc251/Ex.rb", "w+")
    io.puts("1 0 4 2 5 5 5 6 3\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
