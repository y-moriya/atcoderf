RSpec.describe 'test' do
  it 'test with "3 10\n3 3\n2 5\n1 12\n"' do
    io = IO.popen("ruby abc261/E.rb", "w+")
    io.puts("3 10\n3 3\n2 5\n1 12\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n15\n12\n")
  end

  it 'test with "9 12\n1 1\n2 2\n3 3\n1 4\n2 5\n3 6\n1 7\n2 8\n3 9\n"' do
    io = IO.popen("ruby abc261/E.rb", "w+")
    io.puts("9 12\n1 1\n2 2\n3 3\n1 4\n2 5\n3 6\n1 7\n2 8\n3 9\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n2\n1\n0\n5\n3\n3\n11\n2\n")
  end

end
