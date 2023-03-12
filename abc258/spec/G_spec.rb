RSpec.describe 'test' do
  it 'test with "4\n0011\n0011\n1101\n1110\n"' do
    io = IO.popen("ruby abc258/G.rb", "w+")
    io.puts("4\n0011\n0011\n1101\n1110\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "10\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n"' do
    io = IO.popen("ruby abc258/G.rb", "w+")
    io.puts("10\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n0000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
