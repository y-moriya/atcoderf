RSpec.describe 'test' do
  it 'test with "3 2 5\n3 4 1\n1\n2\n"' do
    io = IO.popen("ruby abc258/E.rb", "w+")
    io.puts("3 2 5\n3 4 1\n1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n3\n")
  end

  it 'test with "10 5 20\n5 8 5 9 8 7 4 4 8 2\n1\n1000\n1000000\n1000000000\n1000000000000\n"' do
    io = IO.popen("ruby abc258/E.rb", "w+")
    io.puts("10 5 20\n5 8 5 9 8 7 4 4 8 2\n1\n1000\n1000000\n1000000000\n1000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n5\n5\n5\n5\n")
  end

end
