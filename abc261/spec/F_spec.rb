RSpec.describe 'test' do
  it 'test with "5\n1 5 2 2 1\n3 2 1 2 1\n"' do
    io = IO.popen("ruby abc261/F.rb", "w+")
    io.puts("5\n1 5 2 2 1\n3 2 1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "3\n1 1 1\n3 2 1\n"' do
    io = IO.popen("ruby abc261/F.rb", "w+")
    io.puts("3\n1 1 1\n3 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "3\n3 1 2\n1 1 2\n"' do
    io = IO.popen("ruby abc261/F.rb", "w+")
    io.puts("3\n3 1 2\n1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
