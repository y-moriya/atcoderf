RSpec.describe 'test' do
  it 'test with "3\n"' do
    io = IO.popen("ruby abc254/B.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1 1\n1 2 1\n")
  end

  it 'test with "10\n"' do
    io = IO.popen("ruby abc254/B.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1 1\n1 2 1\n1 3 3 1\n1 4 6 4 1\n1 5 10 10 5 1\n1 6 15 20 15 6 1\n1 7 21 35 35 21 7 1\n1 8 28 56 70 56 28 8 1\n1 9 36 84 126 126 84 36 9 1\n")
  end

end
