RSpec.describe 'test' do
  it 'test with "3 3\n1 2 3\n2 3\n1 2 0\n2 3\n"' do
    io = IO.popen("ruby abc256/F.rb", "w+")
    io.puts("3 3\n1 2 3\n2 3\n1 2 0\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n9\n")
  end

  it 'test with "2 1\n998244353 998244353\n2 1\n"' do
    io = IO.popen("ruby abc256/F.rb", "w+")
    io.puts("2 1\n998244353 998244353\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
