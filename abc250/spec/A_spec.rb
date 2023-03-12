RSpec.describe 'test' do
  it 'test with "3 4\n2 2\n"' do
    io = IO.popen("ruby abc250/A.rb", "w+")
    io.puts("3 4\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 4\n1 3\n"' do
    io = IO.popen("ruby abc250/A.rb", "w+")
    io.puts("3 4\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3 4\n3 4\n"' do
    io = IO.popen("ruby abc250/A.rb", "w+")
    io.puts("3 4\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1 10\n1 5\n"' do
    io = IO.popen("ruby abc250/A.rb", "w+")
    io.puts("1 10\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "8 1\n8 1\n"' do
    io = IO.popen("ruby abc250/A.rb", "w+")
    io.puts("8 1\n8 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1 1\n1 1\n"' do
    io = IO.popen("ruby abc250/A.rb", "w+")
    io.puts("1 1\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
