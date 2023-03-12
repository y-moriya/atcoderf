RSpec.describe 'test' do
  it 'test with "6 6\n6 3\n2 5\n4 2\n1 3\n6 5\n3 2\n110001\n"' do
    io = IO.popen("ruby abc244/G.rb", "w+")
    io.puts("6 6\n6 3\n2 5\n4 2\n1 3\n6 5\n3 2\n110001\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n2 5 6 5 6 3 1 3 6\n")
  end

  it 'test with "3 3\n3 1\n3 2\n1 2\n000\n"' do
    io = IO.popen("ruby abc244/G.rb", "w+")
    io.puts("3 3\n3 1\n3 2\n1 2\n000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n\n")
  end

end
