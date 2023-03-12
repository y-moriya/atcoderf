RSpec.describe 'test' do
  it 'test with "5 5\n1\n2\n3\n4\n5\n"' do
    io = IO.popen("ruby abc250/C.rb", "w+")
    io.puts("5 5\n1\n2\n3\n4\n5\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 3 5 4\n")
  end

  it 'test with "7 7\n7\n7\n7\n7\n7\n7\n7\n"' do
    io = IO.popen("ruby abc250/C.rb", "w+")
    io.puts("7 7\n7\n7\n7\n7\n7\n7\n7\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 3 4 5 7 6\n")
  end

  it 'test with "10 6\n1\n5\n2\n9\n6\n6\n"' do
    io = IO.popen("ruby abc250/C.rb", "w+")
    io.puts("10 6\n1\n5\n2\n9\n6\n6\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 3 4 5 7 6 8 10 9\n")
  end

end
