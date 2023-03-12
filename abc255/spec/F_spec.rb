RSpec.describe 'test' do
  it 'test with "6\n1 3 5 6 4 2\n3 5 1 4 6 2\n"' do
    io = IO.popen("ruby abc255/F.rb", "w+")
    io.puts("6\n1 3 5 6 4 2\n3 5 1 4 6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3 6\n0 0\n0 5\n0 0\n0 0\n4 2\n")
  end

  it 'test with "2\n2 1\n1 2\n"' do
    io = IO.popen("ruby abc255/F.rb", "w+")
    io.puts("2\n2 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
