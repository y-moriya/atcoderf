RSpec.describe 'test' do
  it 'test with "4 2\n2 3\n0 0\n0 1\n1 2\n2 0\n"' do
    io = IO.popen("ruby abc255/B.rb", "w+")
    io.puts("4 2\n2 3\n0 0\n0 1\n1 2\n2 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2.23606797749978969\n")
  end

  it 'test with "2 1\n2\n-100000 -100000\n100000 100000\n"' do
    io = IO.popen("ruby abc255/B.rb", "w+")
    io.puts("2 1\n2\n-100000 -100000\n100000 100000\n")
    io.close_write
    expect(io.readlines.join).to eq("282842.712474619009\n")
  end

  it 'test with "8 3\n2 6 8\n-17683 17993\n93038 47074\n58079 -57520\n-41515 -89802\n-72739 68805\n24324 -73073\n71049 72103\n47863 19268\n"' do
    io = IO.popen("ruby abc255/B.rb", "w+")
    io.puts("8 3\n2 6 8\n-17683 17993\n93038 47074\n58079 -57520\n-41515 -89802\n-72739 68805\n24324 -73073\n71049 72103\n47863 19268\n")
    io.close_write
    expect(io.readlines.join).to eq("130379.280458974768\n")
  end

end
