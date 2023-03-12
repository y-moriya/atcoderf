RSpec.describe 'test' do
  it 'test with "3 5\n3 5 2\n8 1 3\n1 2 2 3\n1 3 1 3\n1 1 1 1\n2 2 2 2\n3 3 1 1\n"' do
    io = IO.popen("ruby abc254/F.rb", "w+")
    io.puts("3 5\n3 5 2\n8 1 3\n1 2 2 3\n1 3 1 3\n1 1 1 1\n2 2 2 2\n3 3 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n1\n11\n6\n10\n")
  end

  it 'test with "1 1\n9\n100\n1 1 1 1\n"' do
    io = IO.popen("ruby abc254/F.rb", "w+")
    io.puts("1 1\n9\n100\n1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("109\n")
  end

end
