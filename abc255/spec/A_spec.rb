RSpec.describe 'test' do
  it 'test with "1 2\n1 0\n0 1\n"' do
    io = IO.popen("ruby abc255/A.rb", "w+")
    io.puts("1 2\n1 0\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "2 2\n1 2\n3 4\n"' do
    io = IO.popen("ruby abc255/A.rb", "w+")
    io.puts("2 2\n1 2\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "2 1\n90 80\n70 60\n"' do
    io = IO.popen("ruby abc255/A.rb", "w+")
    io.puts("2 1\n90 80\n70 60\n")
    io.close_write
    expect(io.readlines.join).to eq("70\n")
  end

end
