RSpec.describe 'test' do
  it 'test with "7 6 1\n1 2 1\n1 3 10\n2 4 100\n2 5 102\n3 6 20\n3 7 30\n"' do
    io = IO.popen("ruby abc261/Ex.rb", "w+")
    io.puts("7 6 1\n1 2 1\n1 3 10\n2 4 100\n2 5 102\n3 6 20\n3 7 30\n")
    io.close_write
    expect(io.readlines.join).to eq("40\n")
  end

  it 'test with "3 6 3\n1 2 1\n2 1 2\n2 3 3\n3 2 4\n3 1 5\n1 3 6\n"' do
    io = IO.popen("ruby abc261/Ex.rb", "w+")
    io.puts("3 6 3\n1 2 1\n2 1 2\n2 3 3\n3 2 4\n3 1 5\n1 3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("INFINITY\n")
  end

  it 'test with "4 4 1\n1 2 1\n2 3 1\n3 1 1\n2 4 1\n"' do
    io = IO.popen("ruby abc261/Ex.rb", "w+")
    io.puts("4 4 1\n1 2 1\n2 3 1\n3 1 1\n2 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
