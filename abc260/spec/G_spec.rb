RSpec.describe 'test' do
  it 'test with "4 2\nOXXX\nXXXX\nXXXX\nXXXX\n6\n1 1\n1 4\n2 2\n2 3\n3 1\n4 4\n"' do
    io = IO.popen("ruby abc260/G.rb", "w+")
    io.puts("4 2\nOXXX\nXXXX\nXXXX\nXXXX\n6\n1 1\n1 4\n2 2\n2 3\n3 1\n4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n1\n0\n0\n0\n")
  end

  it 'test with "####\n##..\n....\n....\n"' do
    io = IO.popen("ruby abc260/G.rb", "w+")
    io.puts("####\n##..\n....\n....\n")
    io.close_write
    expect(io.readlines.join).to eq("5 10\nOOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO\n5\n1 1\n2 3\n3 4\n4 2\n5 5\n")
  end

  it 'test with "1\n6\n12\n8\n25\n"' do
    io = IO.popen("ruby abc260/G.rb", "w+")
    io.puts("1\n6\n12\n8\n25\n")
    io.close_write
    expect(io.readlines.join).to eq("8 5\nOXXOXXOX\nXOXXOXOX\nXOOXOOXO\nOXOOXOXO\nOXXOXXOX\nXOXXOXOX\nXOOXOOXO\nOXOOXOXO\n6\n7 2\n8 1\n4 5\n8 8\n3 4\n1 7\n")
  end

  it 'test with "5\n3\n9\n14\n5\n3\n"' do
    io = IO.popen("ruby abc260/G.rb", "w+")
    io.puts("5\n3\n9\n14\n5\n3\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
