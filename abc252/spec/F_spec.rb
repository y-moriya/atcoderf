RSpec.describe 'test' do
  it 'test with "5 7\n1 2 1 2 1\n"' do
    io = IO.popen("ruby abc252/F.rb", "w+")
    io.puts("5 7\n1 2 1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

  it 'test with "3 1000000000000000\n1000000000 1000000000 1000000000\n"' do
    io = IO.popen("ruby abc252/F.rb", "w+")
    io.puts("3 1000000000000000\n1000000000 1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000005000000000\n")
  end

end
