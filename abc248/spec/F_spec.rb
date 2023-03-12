RSpec.describe 'test' do
  it 'test with "3 998244353\n"' do
    io = IO.popen("ruby abc248/F.rb", "w+")
    io.puts("3 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("7 15\n")
  end

  it 'test with "16 999999937\n"' do
    io = IO.popen("ruby abc248/F.rb", "w+")
    io.puts("16 999999937\n")
    io.close_write
    expect(io.readlines.join).to eq("46 1016 14288 143044 1079816 6349672 29622112 110569766 330377828 784245480 453609503 38603306 44981526 314279703 408855776\n")
  end

end
