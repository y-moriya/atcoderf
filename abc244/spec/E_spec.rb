RSpec.describe 'test' do
  it 'test with "4 4 4 1 3 2\n1 2\n2 3\n3 4\n1 4\n"' do
    io = IO.popen("ruby abc244/E.rb", "w+")
    io.puts("4 4 4 1 3 2\n1 2\n2 3\n3 4\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "6 5 10 1 2 3\n2 3\n2 4\n4 6\n3 6\n1 5\n"' do
    io = IO.popen("ruby abc244/E.rb", "w+")
    io.puts("6 5 10 1 2 3\n2 3\n2 4\n4 6\n3 6\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 15 20 4 4 6\n2 6\n2 7\n5 7\n4 5\n2 4\n3 7\n1 7\n1 4\n2 9\n5 10\n1 3\n7 8\n7 9\n1 6\n1 2\n"' do
    io = IO.popen("ruby abc244/E.rb", "w+")
    io.puts("10 15 20 4 4 6\n2 6\n2 7\n5 7\n4 5\n2 4\n3 7\n1 7\n1 4\n2 9\n5 10\n1 3\n7 8\n7 9\n1 6\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("952504739\n")
  end

end
