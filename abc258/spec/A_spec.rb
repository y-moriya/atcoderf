RSpec.describe 'test' do
  it 'test with "63\n"' do
    io = IO.popen("ruby abc258/A.rb", "w+")
    io.puts("63\n")
    io.close_write
    expect(io.readlines.join).to eq("22:03\n")
  end

  it 'test with "45\n"' do
    io = IO.popen("ruby abc258/A.rb", "w+")
    io.puts("45\n")
    io.close_write
    expect(io.readlines.join).to eq("21:45\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc258/A.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("22:40\n")
  end

end
