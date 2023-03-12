RSpec.describe 'test' do
  it 'test with "1 4 2\n"' do
    io = IO.popen("ruby abc248/B.rb", "w+")
    io.puts("1 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "7 7 10\n"' do
    io = IO.popen("ruby abc248/B.rb", "w+")
    io.puts("7 7 10\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "31 415926 5\n"' do
    io = IO.popen("ruby abc248/B.rb", "w+")
    io.puts("31 415926 5\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
