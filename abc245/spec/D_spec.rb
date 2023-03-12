RSpec.describe 'test' do
  it 'test with "1 2\n2 1\n12 14 8 2\n"' do
    io = IO.popen("ruby abc245/D.rb", "w+")
    io.puts("1 2\n2 1\n12 14 8 2\n")
    io.close_write
    expect(io.readlines.join).to eq("6 4 2\n")
  end

  it 'test with "1 1\n100 1\n10000 0 -1\n"' do
    io = IO.popen("ruby abc245/D.rb", "w+")
    io.puts("1 1\n100 1\n10000 0 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("100 -1\n")
  end

end
