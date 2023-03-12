RSpec.describe 'test' do
  it 'test with "3 2\n"' do
    io = IO.popen("ruby abc256/G.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "299792458 3141\n"' do
    io = IO.popen("ruby abc256/G.rb", "w+")
    io.puts("299792458 3141\n")
    io.close_write
    expect(io.readlines.join).to eq("138897974\n")
  end

end
