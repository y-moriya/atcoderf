RSpec.describe 'test' do
  it 'test with "8\n2 5 4 3 7 1 8 6\n"' do
    io = IO.popen("ruby abc250/G.rb", "w+")
    io.puts("8\n2 5 4 3 7 1 8 6\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

  it 'test with "5\n10000 1000 100 10 1\n"' do
    io = IO.popen("ruby abc250/G.rb", "w+")
    io.puts("5\n10000 1000 100 10 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "15\n300 1 4000 1 50000 900000000 20 600000 50000 300 50000 80000000 900000000 7000000 900000000\n"' do
    io = IO.popen("ruby abc250/G.rb", "w+")
    io.puts("15\n300 1 4000 1 50000 900000000 20 600000 50000 300 50000 80000000 900000000 7000000 900000000\n")
    io.close_write
    expect(io.readlines.join).to eq("2787595378\n")
  end

end
