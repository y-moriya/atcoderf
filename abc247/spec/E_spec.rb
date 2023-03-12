RSpec.describe 'test' do
  it 'test with "4 3 1\n1 2 3 1\n"' do
    io = IO.popen("ruby abc247/E.rb", "w+")
    io.puts("4 3 1\n1 2 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "5 2 1\n1 3 2 4 1\n"' do
    io = IO.popen("ruby abc247/E.rb", "w+")
    io.puts("5 2 1\n1 3 2 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 1 1\n1 1 1 1 1\n"' do
    io = IO.popen("ruby abc247/E.rb", "w+")
    io.puts("5 1 1\n1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

  it 'test with "10 8 1\n2 7 1 8 2 8 1 8 2 8\n"' do
    io = IO.popen("ruby abc247/E.rb", "w+")
    io.puts("10 8 1\n2 7 1 8 2 8 1 8 2 8\n")
    io.close_write
    expect(io.readlines.join).to eq("36\n")
  end

end
