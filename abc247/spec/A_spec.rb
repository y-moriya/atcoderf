RSpec.describe 'test' do
  it 'test with "1011\n"' do
    io = IO.popen("ruby abc247/A.rb", "w+")
    io.puts("1011\n")
    io.close_write
    expect(io.readlines.join).to eq("0101\n")
  end

  it 'test with "0000\n"' do
    io = IO.popen("ruby abc247/A.rb", "w+")
    io.puts("0000\n")
    io.close_write
    expect(io.readlines.join).to eq("0000\n")
  end

  it 'test with "1111\n"' do
    io = IO.popen("ruby abc247/A.rb", "w+")
    io.puts("1111\n")
    io.close_write
    expect(io.readlines.join).to eq("0111\n")
  end

end
