RSpec.describe 'test' do
  it 'test with "5 3 5\n1 3 4\n3 3 1 1 2\n"' do
    io = IO.popen("ruby abc257/B.rb", "w+")
    io.puts("5 3 5\n1 3 4\n3 3 1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2 4 5\n")
  end

  it 'test with "2 2 2\n1 2\n1 2\n"' do
    io = IO.popen("ruby abc257/B.rb", "w+")
    io.puts("2 2 2\n1 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2\n")
  end

  it 'test with "10 6 9\n1 3 5 7 8 9\n1 2 3 4 5 6 5 6 2\n"' do
    io = IO.popen("ruby abc257/B.rb", "w+")
    io.puts("10 6 9\n1 3 5 7 8 9\n1 2 3 4 5 6 5 6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2 5 6 7 9 10\n")
  end

end
