RSpec.describe 'test' do
  it 'test with "6 5\n2 3\n3 4\n3 5\n5 6\n2 6\n7\n1 1\n2 2\n2 0\n2 3\n4 1\n6 0\n4 3\n"' do
    io = IO.popen("ruby abc254/E.rb", "w+")
    io.puts("6 5\n2 3\n3 4\n3 5\n5 6\n2 6\n7\n1 1\n2 2\n2 0\n2 3\n4 1\n6 0\n4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n20\n2\n20\n7\n6\n20\n")
  end

end
