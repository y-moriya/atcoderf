RSpec.describe 'test' do
  it 'test with "023456789\n"' do
    io = IO.popen("ruby abc248/A.rb", "w+")
    io.puts("023456789\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "459230781\n"' do
    io = IO.popen("ruby abc248/A.rb", "w+")
    io.puts("459230781\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
