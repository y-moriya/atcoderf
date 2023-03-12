require 'rspec'

RSpec.describe 'test' do
  it 'test with "1500 2000 1600 3 2"' do
    io = IO.popen("ruby abc095/C.rb", "w+")
    io.puts("1500 2000 1600 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("7900\n")
  end
  
  it 'test with "1500 2000 1900 3 2"' do
    io = IO.popen("ruby abc095/C.rb", "w+")
    io.puts("1500 2000 1900 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("8500\n")
  end
  
  it 'test with "1500 2000 500 90000 100000"' do
    io = IO.popen("ruby abc095/C.rb", "w+")
    io.puts("1500 2000 500 90000 100000")
    io.close_write
    expect(io.readlines.join).to eq("100000000\n")
  end
end
