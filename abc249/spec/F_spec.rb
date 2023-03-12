RSpec.describe 'test' do
  it 'test with "5 1\n2 4\n2 -3\n1 2\n2 1\n2 -3\n"' do
    io = IO.popen("ruby abc249/F.rb", "w+")
    io.puts("5 1\n2 4\n2 -3\n1 2\n2 1\n2 -3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1 0\n2 -1000000000\n"' do
    io = IO.popen("ruby abc249/F.rb", "w+")
    io.puts("1 0\n2 -1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("-1000000000\n")
  end

  it 'test with "10 3\n2 3\n2 -1\n1 4\n2 -1\n2 5\n2 -9\n2 2\n1 -6\n2 5\n2 -3\n"' do
    io = IO.popen("ruby abc249/F.rb", "w+")
    io.puts("10 3\n2 3\n2 -1\n1 4\n2 -1\n2 5\n2 -9\n2 2\n1 -6\n2 5\n2 -3\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

end
