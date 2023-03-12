RSpec.describe 'test' do
  it 'test with "2 3\n2 4\n3 2\n8 1 5\n2 10 5\n"' do
    io = IO.popen("ruby abc245/E.rb", "w+")
    io.puts("2 3\n2 4\n3 2\n8 1 5\n2 10 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 2\n1 1\n2 2\n100 1\n100 1\n"' do
    io = IO.popen("ruby abc245/E.rb", "w+")
    io.puts("2 2\n1 1\n2 2\n100 1\n100 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1 1\n10\n100\n100\n10\n"' do
    io = IO.popen("ruby abc245/E.rb", "w+")
    io.puts("1 1\n10\n100\n100\n10\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1 1\n10\n100\n10\n100\n"' do
    io = IO.popen("ruby abc245/E.rb", "w+")
    io.puts("1 1\n10\n100\n10\n100\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
