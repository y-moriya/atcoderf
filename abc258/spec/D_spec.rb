RSpec.describe 'test' do
  it 'test with "3 4\n3 4\n2 3\n4 2\n"' do
    io = IO.popen("ruby abc258/D.rb", "w+")
    io.puts("3 4\n3 4\n2 3\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

  it 'test with "10 1000000000\n3 3\n1 6\n4 7\n1 8\n5 7\n9 9\n2 4\n6 4\n5 1\n3 1\n"' do
    io = IO.popen("ruby abc258/D.rb", "w+")
    io.puts("10 1000000000\n3 3\n1 6\n4 7\n1 8\n5 7\n9 9\n2 4\n6 4\n5 1\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000076\n")
  end

end
