RSpec.describe 'test' do
  it 'test with "0 3 1 5\n"' do
    io = IO.popen("ruby abc261/A.rb", "w+")
    io.puts("0 3 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "0 1 4 5\n"' do
    io = IO.popen("ruby abc261/A.rb", "w+")
    io.puts("0 1 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "0 3 3 7\n"' do
    io = IO.popen("ruby abc261/A.rb", "w+")
    io.puts("0 3 3 7\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
