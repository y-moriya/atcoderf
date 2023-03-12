RSpec.describe 'test' do
  it 'test with "3 998244353\n"' do
    io = IO.popen("ruby abc249/E.rb", "w+")
    io.puts("3 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("26\n")
  end

  it 'test with "2 998244353\n"' do
    io = IO.popen("ruby abc249/E.rb", "w+")
    io.puts("2 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 998244353\n"' do
    io = IO.popen("ruby abc249/E.rb", "w+")
    io.puts("5 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("2626\n")
  end

  it 'test with "3000 924844033\n"' do
    io = IO.popen("ruby abc249/E.rb", "w+")
    io.puts("3000 924844033\n")
    io.close_write
    expect(io.readlines.join).to eq("607425699\n")
  end

end
