RSpec.describe 'test' do
  it 'test with "3 3\nabc\n2 2\n1 1\n2 2\n"' do
    io = IO.popen("ruby abc258/C.rb", "w+")
    io.puts("3 3\nabc\n2 2\n1 1\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("b\na\n")
  end

  it 'test with "10 8\ndsuccxulnl\n2 4\n2 7\n1 12\n2 7\n1 1\n1 2\n1 3\n2 5\n"' do
    io = IO.popen("ruby abc258/C.rb", "w+")
    io.puts("10 8\ndsuccxulnl\n2 4\n2 7\n1 2\n2 7\n1 1\n1 2\n1 3\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("c\nu\nc\nu\n")
  end

end
