RSpec.describe 'test' do
  it 'test with "3 5\n2 5 6\n3 1 3\n1 2 3 2\n3 1 2\n2 1 2 3\n3 1 3\n"' do
    io = IO.popen("ruby abc256/Ex.rb", "w+")
    io.puts("3 5\n2 5 6\n3 1 3\n1 2 3 2\n3 1 2\n2 1 2 3\n3 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n4\n9\n")
  end

  it 'test with "6 11\n10 3 5 20 6 7\n3 1 6\n1 2 4 3\n3 1 3\n2 1 4 10\n3 3 6\n1 3 6 2\n2 1 4 5\n3 1 6\n2 1 3 100\n1 2 5 6\n3 1 4\n"' do
    io = IO.popen("ruby abc256/Ex.rb", "w+")
    io.puts("6 11\n10 3 5 20 6 7\n3 1 6\n1 2 4 3\n3 1 3\n2 1 4 10\n3 3 6\n1 3 6 2\n2 1 4 5\n3 1 6\n2 1 3 100\n1 2 5 6\n3 1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("51\n12\n33\n26\n132\n")
  end

end
