RSpec.describe 'test' do
  it 'test with "5 4\n9 8 3 7 2\n1 6 2 9 5\n"' do
    io = IO.popen("ruby abc245/C.rb", "w+")
    io.puts("5 4\n9 8 3 7 2\n1 6 2 9 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4 90\n1 1 1 100\n1 2 3 100\n"' do
    io = IO.popen("ruby abc245/C.rb", "w+")
    io.puts("4 90\n1 1 1 100\n1 2 3 100\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "4 1000000000\n1 1 1000000000 1000000000\n1 1000000000 1 1000000000\n"' do
    io = IO.popen("ruby abc245/C.rb", "w+")
    io.puts("4 1000000000\n1 1 1000000000 1000000000\n1 1000000000 1 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
