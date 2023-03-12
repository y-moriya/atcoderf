RSpec.describe 'test' do
  it 'test with "4\n1 1 3 2\n"' do
    io = IO.popen("ruby abc256/B.rb", "w+")
    io.puts("4\n1 1 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n1 1 1\n"' do
    io = IO.popen("ruby abc256/B.rb", "w+")
    io.puts("3\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\n2 2 4 1 1 1 4 2 2 1\n"' do
    io = IO.popen("ruby abc256/B.rb", "w+")
    io.puts("10\n2 2 4 1 1 1 4 2 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
