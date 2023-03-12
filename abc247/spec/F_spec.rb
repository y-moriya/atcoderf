RSpec.describe 'test' do
  it 'test with "3\n1 2 3\n2 1 3\n"' do
    io = IO.popen("ruby abc247/F.rb", "w+")
    io.puts("3\n1 2 3\n2 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5\n2 3 5 4 1\n4 2 1 3 5\n"' do
    io = IO.popen("ruby abc247/F.rb", "w+")
    io.puts("5\n2 3 5 4 1\n4 2 1 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "8\n1 2 3 4 5 6 7 8\n1 2 3 4 5 6 7 8\n"' do
    io = IO.popen("ruby abc247/F.rb", "w+")
    io.puts("8\n1 2 3 4 5 6 7 8\n1 2 3 4 5 6 7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
