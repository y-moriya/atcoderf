RSpec.describe 'test' do
  it 'test with "5\n10101\n60 45 30 40 80\n"' do
    io = IO.popen("ruby abc257/C.rb", "w+")
    io.puts("5\n10101\n60 45 30 40 80\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3\n000\n1 2 3\n"' do
    io = IO.popen("ruby abc257/C.rb", "w+")
    io.puts("3\n000\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5\n10101\n60 50 50 50 60\n"' do
    io = IO.popen("ruby abc257/C.rb", "w+")
    io.puts("5\n10101\n60 50 50 50 60\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
