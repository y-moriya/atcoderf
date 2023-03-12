RSpec.describe 'test' do
  it 'test with "6 8\n5 1\n4 3\n1 4\n3 5\n1 2\n2 6\n1 6\n4 2\n"' do
    io = IO.popen("ruby abc251/F.rb", "w+")
    io.puts("6 8\n5 1\n4 3\n1 4\n3 5\n1 2\n2 6\n1 6\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1 4\n4 3\n5 3\n4 2\n6 2\n1 5\n5 3\n1 4\n2 1\n1 6\n")
  end

  it 'test with "4 3\n3 1\n1 2\n1 4\n"' do
    io = IO.popen("ruby abc251/F.rb", "w+")
    io.puts("4 3\n3 1\n1 2\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2\n1 3\n1 4\n1 4\n1 3\n1 2\n")
  end

end
