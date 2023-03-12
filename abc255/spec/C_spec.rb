RSpec.describe 'test' do
  it 'test with "6 2 3 3\n"' do
    io = IO.popen("ruby abc255/C.rb", "w+")
    io.puts("6 2 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "0 0 0 1\n"' do
    io = IO.popen("ruby abc255/C.rb", "w+")
    io.puts("0 0 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "998244353 -10 -20 30\n"' do
    io = IO.popen("ruby abc255/C.rb", "w+")
    io.puts("998244353 -10 -20 30\n")
    io.close_write
    expect(io.readlines.join).to eq("998244363\n")
  end

  it 'test with "-555555555555555555 -1000000000000000000 1000000 1000000000000\n"' do
    io = IO.popen("ruby abc255/C.rb", "w+")
    io.puts("-555555555555555555 -1000000000000000000 1000000 1000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("444445\n")
  end

end
