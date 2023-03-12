RSpec.describe 'test' do
  it 'test with "2\n1 2\n"' do
    io = IO.popen("ruby abc249/Ex.rb", "w+")
    io.puts("2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3\n1 1 1\n"' do
    io = IO.popen("ruby abc249/Ex.rb", "w+")
    io.puts("3\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\n3 1 4 1 5 9 2 6 5 3\n"' do
    io = IO.popen("ruby abc249/Ex.rb", "w+")
    io.puts("10\n3 1 4 1 5 9 2 6 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("900221128\n")
  end

end
