RSpec.describe 'test' do
  it 'test with "2 3 4\n"' do
    io = IO.popen("ruby abc248/C.rb", "w+")
    io.puts("2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "31 41 592\n"' do
    io = IO.popen("ruby abc248/C.rb", "w+")
    io.puts("31 41 592\n")
    io.close_write
    expect(io.readlines.join).to eq("798416518\n")
  end

end
