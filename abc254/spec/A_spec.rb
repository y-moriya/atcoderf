RSpec.describe 'test' do
  it 'test with "254\n"' do
    io = IO.popen("ruby abc254/A.rb", "w+")
    io.puts("254\n")
    io.close_write
    expect(io.readlines.join).to eq("54\n")
  end

  it 'test with "101\n"' do
    io = IO.popen("ruby abc254/A.rb", "w+")
    io.puts("101\n")
    io.close_write
    expect(io.readlines.join).to eq("01\n")
  end

end
