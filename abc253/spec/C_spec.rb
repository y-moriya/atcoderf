RSpec.describe 'test' do
  it 'test with "8\n1 3\n1 2\n3\n1 2\n1 7\n3\n2 2 3\n3\n"' do
    io = IO.popen("ruby abc253/C.rb", "w+")
    io.puts("8\n1 3\n1 2\n3\n1 2\n1 7\n3\n2 2 3\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n5\n4\n")
  end

  it 'test with "4\n1 10000\n1 1000\n2 100 3\n1 10\n"' do
    io = IO.popen("ruby abc253/C.rb", "w+")
    io.puts("4\n1 10000\n1 1000\n2 100 3\n1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("")
  end

end
