RSpec.describe 'test' do
  it 'test with "3 4 6 3 3 7\n"' do
    io = IO.popen("ruby abc256/C.rb", "w+")
    io.puts("3 4 6 3 3 7\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "3 4 5 6 7 8\n"' do
    io = IO.popen("ruby abc256/C.rb", "w+")
    io.puts("3 4 5 6 7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 13 10 6 13 9\n"' do
    io = IO.popen("ruby abc256/C.rb", "w+")
    io.puts("5 13 10 6 13 9\n")
    io.close_write
    expect(io.readlines.join).to eq("120\n")
  end

  it 'test with "20 25 30 22 29 24\n"' do
    io = IO.popen("ruby abc256/C.rb", "w+")
    io.puts("20 25 30 22 29 24\n")
    io.close_write
    expect(io.readlines.join).to eq("30613\n")
  end

end
