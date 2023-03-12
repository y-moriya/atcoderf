RSpec.describe 'test' do
  it 'test with "2 3 6\n"' do
    io = IO.popen("ruby abc245/Ex.rb", "w+")
    io.puts("2 3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "10 0 2\n"' do
    io = IO.popen("ruby abc245/Ex.rb", "w+")
    io.puts("10 0 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1023\n")
  end

  it 'test with "1000000000 20220326 1000000000000\n"' do
    io = IO.popen("ruby abc245/Ex.rb", "w+")
    io.puts("1000000000 20220326 1000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("561382653\n")
  end

end
