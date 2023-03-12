RSpec.describe 'test' do
  it 'test with "3\n3 4 5\n2 4 6\n"' do
    io = IO.popen("ruby abc254/Ex.rb", "w+")
    io.puts("3\n3 4 5\n2 4 6\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1\n0\n1\n"' do
    io = IO.popen("ruby abc254/Ex.rb", "w+")
    io.puts("1\n0\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
