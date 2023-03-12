RSpec.describe 'test' do
  it 'test with "4 1\n1 4 2 3\n"' do
    io = IO.popen("ruby abc248/Ex.rb", "w+")
    io.puts("4 1\n1 4 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "2 0\n2 1\n"' do
    io = IO.popen("ruby abc248/Ex.rb", "w+")
    io.puts("2 0\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "10 3\n3 7 10 1 9 5 4 8 6 2\n"' do
    io = IO.popen("ruby abc248/Ex.rb", "w+")
    io.puts("10 3\n3 7 10 1 9 5 4 8 6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("37\n")
  end

end
