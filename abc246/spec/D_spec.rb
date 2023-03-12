RSpec.describe 'test' do
  it 'test with "9\n"' do
    io = IO.popen("ruby abc246/D.rb", "w+")
    io.puts("9\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc246/D.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "999999999989449206\n"' do
    io = IO.popen("ruby abc246/D.rb", "w+")
    io.puts("999999999989449206\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000000000000\n")
  end

end
