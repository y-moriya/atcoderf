RSpec.describe 'test' do
  it 'test with "4\n1 0 -1 -1\n0 1 2 0\n-1 0 1 1\n0 -1 1 -2\n"' do
    io = IO.popen("ruby abc244/Ex.rb", "w+")
    io.puts("4\n1 0 -1 -1\n0 1 2 0\n-1 0 1 1\n0 -1 1 -2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n2\n1\n2\n")
  end

  it 'test with "9\n-1 4 -8 -2\n9 -9 -7 7\n4 1 6 7\n-4 -1 -4 -5\n-9 3 -2 -6\n-1 0 -8 5\n-8 -5 0 0\n8 3 0 -4\n2 -5 2 5\n"' do
    io = IO.popen("ruby abc244/Ex.rb", "w+")
    io.puts("9\n-1 4 -8 -2\n9 -9 -7 7\n4 1 6 7\n-4 -1 -4 -5\n-9 3 -2 -6\n-1 0 -8 5\n-8 -5 0 0\n8 3 0 -4\n2 -5 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n35\n31\n21\n36\n87\n0\n36\n31\n")
  end

end
