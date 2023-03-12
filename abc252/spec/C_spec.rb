RSpec.describe 'test' do
  it 'test with "3\n1937458062\n8124690357\n2385760149\n"' do
    io = IO.popen("ruby abc252/C.rb", "w+")
    io.puts("3\n1937458062\n8124690357\n2385760149\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "5\n0123456789\n0123456789\n0123456789\n0123456789\n0123456789\n"' do
    io = IO.popen("ruby abc252/C.rb", "w+")
    io.puts("5\n0123456789\n0123456789\n0123456789\n0123456789\n0123456789\n")
    io.close_write
    expect(io.readlines.join).to eq("40\n")
  end

end
