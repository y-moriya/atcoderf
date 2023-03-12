RSpec.describe 'test' do
  it 'test with "4 4 2 2\n1 1 2 2\n2 3\n1 2 15\n2 3 30\n3 4 40\n1 4 10\n"' do
    io = IO.popen("ruby abc245/G.rb", "w+")
    io.puts("4 4 2 2\n1 1 2 2\n2 3\n1 2 15\n2 3 30\n3 4 40\n1 4 10\n")
    io.close_write
    expect(io.readlines.join).to eq("45 30 30 25\n")
  end

  it 'test with "3 1 3 1\n1 2 3\n1\n1 2 1000000000\n"' do
    io = IO.popen("ruby abc245/G.rb", "w+")
    io.puts("3 1 3 1\n1 2 3\n1\n1 2 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("-1 1000000000 -1\n")
  end

end
