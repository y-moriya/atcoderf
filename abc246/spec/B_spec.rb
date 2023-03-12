RSpec.describe 'test' do
  it 'test with "3 4\n"' do
    io = IO.popen("ruby abc246/B.rb", "w+")
    io.puts("3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0.600000000000 0.800000000000\n")
  end

  it 'test with "1 0\n"' do
    io = IO.popen("ruby abc246/B.rb", "w+")
    io.puts("1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1.000000000000 0.000000000000\n")
  end

  it 'test with "246 402\n"' do
    io = IO.popen("ruby abc246/B.rb", "w+")
    io.puts("246 402\n")
    io.close_write
    expect(io.readlines.join).to eq("0.521964870245 0.852966983083\n")
  end

end
