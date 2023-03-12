RSpec.describe 'test' do
  it 'test with "2 10\n1 3\n"' do
    io = IO.popen("ruby abc251/B.rb", "w+")
    io.puts("2 10\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2 1\n2 3\n"' do
    io = IO.popen("ruby abc251/B.rb", "w+")
    io.puts("2 1\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "4 12\n3 3 3 3\n"' do
    io = IO.popen("ruby abc251/B.rb", "w+")
    io.puts("4 12\n3 3 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "7 251\n202 20 5 1 4 2 100\n"' do
    io = IO.popen("ruby abc251/B.rb", "w+")
    io.puts("7 251\n202 20 5 1 4 2 100\n")
    io.close_write
    expect(io.readlines.join).to eq("48\n")
  end

  it 'test with "1 1\n1\n"' do
    io = IO.popen("ruby abc251/B.rb", "w+")
    io.puts("1 1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
