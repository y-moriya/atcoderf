RSpec.describe 'test' do
  it 'test with "3 5\n1 3\n1 4\n2 5\n"' do
    io = IO.popen("ruby abc260/E.rb", "w+")
    io.puts("3 5\n1 3\n1 4\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0 1 3 2 1\n")
  end

  it 'test with "1 2\n1 2\n"' do
    io = IO.popen("ruby abc260/E.rb", "w+")
    io.puts("1 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2 1\n")
  end

  it 'test with "5 9\n1 5\n1 7\n5 6\n5 8\n2 6\n"' do
    io = IO.popen("ruby abc260/E.rb", "w+")
    io.puts("5 9\n1 5\n1 7\n5 6\n5 8\n2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0 1 2 4 4 3 2 1\n")
  end

end
