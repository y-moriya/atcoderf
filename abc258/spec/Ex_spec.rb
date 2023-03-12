RSpec.describe 'test' do
  it 'test with "3 7\n2 4 5\n"' do
    io = IO.popen("ruby abc258/Ex.rb", "w+")
    io.puts("3 7\n2 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5 60\n10 20 30 40 50\n"' do
    io = IO.popen("ruby abc258/Ex.rb", "w+")
    io.puts("5 60\n10 20 30 40 50\n")
    io.close_write
    expect(io.readlines.join).to eq("37634180\n")
  end

  it 'test with "10 1000000000000000000\n1 2 4 8 16 32 64 128 256 512\n"' do
    io = IO.popen("ruby abc258/Ex.rb", "w+")
    io.puts("10 1000000000000000000\n1 2 4 8 16 32 64 128 256 512\n")
    io.close_write
    expect(io.readlines.join).to eq("75326268\n")
  end

end
