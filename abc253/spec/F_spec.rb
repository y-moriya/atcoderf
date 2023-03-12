RSpec.describe 'test' do
  it 'test with "3 3 9\n1 1 2 1\n3 2 2\n2 3 2\n3 3 3\n3 3 1\n1 2 3 3\n3 3 2\n3 2 3\n3 1 2\n"' do
    io = IO.popen("ruby abc253/F.rb", "w+")
    io.puts("3 3 9\n1 1 2 1\n3 2 2\n2 3 2\n3 3 3\n3 3 1\n1 2 3 3\n3 3 2\n3 2 3\n3 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n2\n5\n3\n4\n")
  end

  it 'test with "1 1 10\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n3 1 1\n"' do
    io = IO.popen("ruby abc253/F.rb", "w+")
    io.puts("1 1 10\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n1 1 1 1000000000\n3 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("9000000000\n")
  end

  it 'test with "10 10 10\n1 1 8 5\n2 2 6\n3 2 1\n3 4 7\n1 5 9 7\n3 3 2\n3 2 8\n2 8 10\n3 8 8\n3 1 10\n"' do
    io = IO.popen("ruby abc253/F.rb", "w+")
    io.puts("10 10 10\n1 1 8 5\n2 2 6\n3 2 1\n3 4 7\n1 5 9 7\n3 3 2\n3 2 8\n2 8 10\n3 8 8\n3 1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n5\n5\n13\n10\n0\n")
  end

end
