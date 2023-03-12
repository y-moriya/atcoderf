RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby abc247/C.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 1\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc247/C.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4\n"' do
    io = IO.popen("ruby abc247/C.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 1 3 1 2 1 4 1 2 1 3 1 2 1\n")
  end

end
