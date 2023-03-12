RSpec.describe 'test' do
  it 'test with "5 3 6\n"' do
    io = IO.popen("ruby abc253/G.rb", "w+")
    io.puts("5 3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("5 1 2 3 4\n")
  end

  it 'test with "10 12 36\n"' do
    io = IO.popen("ruby abc253/G.rb", "w+")
    io.puts("10 12 36\n")
    io.close_write
    expect(io.readlines.join).to eq("1 10 9 8 7 4 3 2 5 6\n")
  end

end
