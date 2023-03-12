RSpec.describe 'test' do
  it 'test with "250\n"' do
    io = IO.popen("ruby abc250/D.rb", "w+")
    io.puts("250\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc250/D.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "123456789012345\n"' do
    io = IO.popen("ruby abc250/D.rb", "w+")
    io.puts("123456789012345\n")
    io.close_write
    expect(io.readlines.join).to eq("226863\n")
  end

end
