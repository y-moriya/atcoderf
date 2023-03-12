RSpec.describe 'test' do
  it 'test with "38 20 17 168 3\n"' do
    io = IO.popen("ruby abc259/A.rb", "w+")
    io.puts("38 20 17 168 3\n")
    io.close_write
    expect(io.readlines.join).to eq("168\n")
  end

  it 'test with "1 0 1 3 2\n"' do
    io = IO.popen("ruby abc259/A.rb", "w+")
    io.puts("1 0 1 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "100 10 100 180 1\n"' do
    io = IO.popen("ruby abc259/A.rb", "w+")
    io.puts("100 10 100 180 1\n")
    io.close_write
    expect(io.readlines.join).to eq("90\n")
  end

  it 'test with "1 0 1 2 1\n"' do
    io = IO.popen("ruby abc259/A.rb", "w+")
    io.puts("1 0 1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "100 0 1 10 9\n"' do
    io = IO.popen("ruby abc259/A.rb", "w+")
    io.puts("100 0 1 10 9\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "100 1 1 10 9\n"' do
    io = IO.popen("ruby abc259/A.rb", "w+")
    io.puts("100 1 1 10 9\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "100 100 1 10 9\n"' do
    io = IO.popen("ruby abc259/A.rb", "w+")
    io.puts("100 100 1 10 9\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

end
