RSpec.describe 'test' do
  it 'test with "3 2\n1 2 3\n1 1 1 1 1 1\n2 2 2 2 2 2\n3 3 3 3 3 3\n"' do
    io = IO.popen("ruby abc257/Ex.rb", "w+")
    io.puts("3 2\n1 2 3\n1 1 1 1 1 1\n2 2 2 2 2 2\n3 3 3 3 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("20\n")
  end

  it 'test with "10 5\n2 5 6 5 2 1 7 9 7 2\n5 5 2 4 7 6\n2 2 8 7 7 9\n8 1 9 6 10 8\n8 6 10 3 3 9\n1 10 5 8 1 10\n7 8 4 8 6 5\n1 10 2 5 1 7\n7 4 1 4 5 4\n5 10 1 5 1 2\n5 1 2 3 6 2\n"' do
    io = IO.popen("ruby abc257/Ex.rb", "w+")
    io.puts("10 5\n2 5 6 5 2 1 7 9 7 2\n5 5 2 4 7 6\n2 2 8 7 7 9\n8 1 9 6 10 8\n8 6 10 3 3 9\n1 10 5 8 1 10\n7 8 4 8 6 5\n1 10 2 5 1 7\n7 4 1 4 5 4\n5 10 1 5 1 2\n5 1 2 3 6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1014\n")
  end

end
