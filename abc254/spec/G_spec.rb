RSpec.describe 'test' do
  it 'test with "3 4 3\n1 2 10\n2 3 7\n3 9 14\n3 1 3\n1 3 3 14\n3 1 2 7\n1 100 1 101\n"' do
    io = IO.popen("ruby abc254/G.rb", "w+")
    io.puts("3 4 3\n1 2 10\n2 3 7\n3 9 14\n3 1 3\n1 3 3 14\n3 1 2 7\n1 100 1 101\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n7\n-1\n")
  end

  it 'test with "1 1 1\n1 1 2\n1 1 1 2\n"' do
    io = IO.popen("ruby abc254/G.rb", "w+")
    io.puts("1 1 1\n1 1 2\n1 1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
