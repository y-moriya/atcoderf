RSpec.describe 'test' do
  it 'test with "2 3 5\n1 3\n1 4\n1 5\n2 4\n2 5\n"' do
    io = IO.popen("ruby abc260/F.rb", "w+")
    io.puts("2 3 5\n1 3\n1 4\n1 5\n2 4\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 4 5\n")
  end

  it 'test with "3 2 4\n1 4\n1 5\n2 5\n3 5\n"' do
    io = IO.popen("ruby abc260/F.rb", "w+")
    io.puts("3 2 4\n1 4\n1 5\n2 5\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "4 5 9\n3 5\n1 8\n3 7\n1 9\n4 6\n2 7\n4 8\n1 7\n2 9\n"' do
    io = IO.popen("ruby abc260/F.rb", "w+")
    io.puts("4 5 9\n3 5\n1 8\n3 7\n1 9\n4 6\n2 7\n4 8\n1 7\n2 9\n")
    io.close_write
    expect(io.readlines.join).to eq("1 7 2 9\n")
  end

end
