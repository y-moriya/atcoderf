RSpec.describe 'test' do
  it 'test with "3 4\n1 1 2\n"' do
    io = IO.popen("ruby abc260/Ex.rb", "w+")
    io.puts("3 4\n1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("8 12 20 36\n")
  end

  it 'test with "2 1\n1 1\n"' do
    io = IO.popen("ruby abc260/Ex.rb", "w+")
    io.puts("2 1\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 5\n3 1 4 1 5 9 2 6 5 3\n"' do
    io = IO.popen("ruby abc260/Ex.rb", "w+")
    io.puts("10 5\n3 1 4 1 5 9 2 6 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("30481920 257886720 199419134 838462446 196874334\n")
  end

end
