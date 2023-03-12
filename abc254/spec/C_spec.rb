RSpec.describe 'test' do
  it 'test with "5 2\n3 4 1 3 4\n"' do
    io = IO.popen("ruby abc254/C.rb", "w+")
    io.puts("5 2\n3 4 1 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "5 3\n3 4 1 3 4\n"' do
    io = IO.popen("ruby abc254/C.rb", "w+")
    io.puts("5 3\n3 4 1 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "7 5\n1 2 3 4 5 5 10\n"' do
    io = IO.popen("ruby abc254/C.rb", "w+")
    io.puts("7 5\n1 2 3 4 5 5 10\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
