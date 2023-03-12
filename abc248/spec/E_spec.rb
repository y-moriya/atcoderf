RSpec.describe 'test' do
  it 'test with "5 2\n0 0\n1 0\n0 1\n-1 0\n0 -1\n"' do
    io = IO.popen("ruby abc248/E.rb", "w+")
    io.puts("5 2\n0 0\n1 0\n0 1\n-1 0\n0 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "1 1\n0 0\n"' do
    io = IO.popen("ruby abc248/E.rb", "w+")
    io.puts("1 1\n0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("Infinity\n")
  end

end
