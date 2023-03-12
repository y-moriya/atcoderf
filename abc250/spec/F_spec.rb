RSpec.describe 'test' do
  it 'test with "5\n3 0\n2 3\n-1 3\n-3 1\n-1 -1\n"' do
    io = IO.popen("ruby abc250/F.rb", "w+")
    io.puts("5\n3 0\n2 3\n-1 3\n-3 1\n-1 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4\n400000000 400000000\n-400000000 400000000\n-400000000 -400000000\n400000000 -400000000\n"' do
    io = IO.popen("ruby abc250/F.rb", "w+")
    io.puts("4\n400000000 400000000\n-400000000 400000000\n-400000000 -400000000\n400000000 -400000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1280000000000000000\n")
  end

  it 'test with "6\n-816 222\n-801 -757\n-165 -411\n733 131\n835 711\n-374 979\n"' do
    io = IO.popen("ruby abc250/F.rb", "w+")
    io.puts("6\n-816 222\n-801 -757\n-165 -411\n733 131\n835 711\n-374 979\n")
    io.close_write
    expect(io.readlines.join).to eq("157889\n")
  end

end
