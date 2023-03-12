RSpec.describe 'test' do
  it 'test with "4\n1 2 3\n2 2\n1 3 4\n2 3\n"' do
    io = IO.popen("ruby abc247/D.rb", "w+")
    io.puts("4\n1 2 3\n2 2\n1 3 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n8\n")
  end

  it 'test with "2\n1 1000000000 1000000000\n2 1000000000\n"' do
    io = IO.popen("ruby abc247/D.rb", "w+")
    io.puts("2\n1 1000000000 1000000000\n2 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000000000000\n")
  end

  it 'test with "5\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n"' do
    io = IO.popen("ruby abc247/D.rb", "w+")
    io.puts("5\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("")
  end

end
