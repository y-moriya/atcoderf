RSpec.describe 'test' do
  it 'test with "5 2\n3 5 2 1 4\n"' do
    io = IO.popen("ruby abc260/D.rb", "w+")
    io.puts("5 2\n3 5 2 1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n3\n3\n-1\n4\n")
  end

  it 'test with "5 1\n1 2 3 4 5\n"' do
    io = IO.popen("ruby abc260/D.rb", "w+")
    io.puts("5 1\n1 2 3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n5\n")
  end

  it 'test with "15 3\n3 14 15 9 2 6 5 13 1 7 10 11 8 12 4\n"' do
    io = IO.popen("ruby abc260/D.rb", "w+")
    io.puts("15 3\n3 14 15 9 2 6 5 13 1 7 10 11 8 12 4\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n9\n9\n15\n15\n6\n-1\n-1\n6\n-1\n-1\n-1\n-1\n6\n15\n")
  end

end
