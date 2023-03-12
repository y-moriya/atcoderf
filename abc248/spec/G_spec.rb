RSpec.describe 'test' do
  it 'test with "4\n24 30 28 7\n1 2\n1 3\n3 4\n"' do
    io = IO.popen("ruby abc248/G.rb", "w+")
    io.puts("4\n24 30 28 7\n1 2\n1 3\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("47\n")
  end

  it 'test with "10\n180 168 120 144 192 200 198 160 156 150\n1 2\n2 3\n2 4\n2 5\n5 6\n4 7\n7 8\n7 9\n9 10\n"' do
    io = IO.popen("ruby abc248/G.rb", "w+")
    io.puts("10\n180 168 120 144 192 200 198 160 156 150\n1 2\n2 3\n2 4\n2 5\n5 6\n4 7\n7 8\n7 9\n9 10\n")
    io.close_write
    expect(io.readlines.join).to eq("1184\n")
  end

end
