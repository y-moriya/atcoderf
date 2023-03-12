RSpec.describe 'test' do
  it 'test with "4 1\n1 1 2 1\n"' do
    io = IO.popen("ruby abc247/Ex.rb", "w+")
    io.puts("4 1\n1 1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3 3\n1 1 2\n"' do
    io = IO.popen("ruby abc247/Ex.rb", "w+")
    io.puts("3 3\n1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10 4\n2 7 1 8 2 8 1 8 2 8\n"' do
    io = IO.popen("ruby abc247/Ex.rb", "w+")
    io.puts("10 4\n2 7 1 8 2 8 1 8 2 8\n")
    io.close_write
    expect(io.readlines.join).to eq("132\n")
  end

end
