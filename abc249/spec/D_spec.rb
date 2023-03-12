RSpec.describe 'test' do
  it 'test with "3\n6 2 3\n"' do
    io = IO.popen("ruby abc249/D.rb", "w+")
    io.puts("3\n6 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1\n2\n"' do
    io = IO.popen("ruby abc249/D.rb", "w+")
    io.puts("1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\n1 3 2 4 6 8 2 2 3 7\n"' do
    io = IO.popen("ruby abc249/D.rb", "w+")
    io.puts("10\n1 3 2 4 6 8 2 2 3 7\n")
    io.close_write
    expect(io.readlines.join).to eq("62\n")
  end

end
